/**
 *
 * 旗计智能数据平台数据采集分析JS库
 * Create by caocheng on 2017/8/28
 * */
(function () {
    window.$qj = {};

    /**
     * 操作函数
     * 用户消息队列的解析，采集数据的发送
     * @type {{analyze: $qj.option.analyze, send: $qj.option.send}}
     */
    $qj.option = {
        //解析消息队列
        analyze: function (_maq) {
            var params = {};
            //解析_maq配置
            if (_maq) {
                for (var i in _maq) {
                    switch (_maq[i][0]) {
                        case '_setAccount':
                            params.account = _maq[i][1];
                            _maq.splice(i, 1);
                            break;
                        default:
                            break;
                    }
                }
            }
            return params;
        },
        //发送数据到服务器
        send: function (params) {
            //拼接参数串
            var args = '';
            for (var i in params) {
                if (args != '') {
                    args += '&';
                }
                args += i + '=' + encodeURIComponent(params[i]);
            }
            //通过Image对象请求后端脚本
            var img = new Image(1, 1);
            img.src = window.server_url + '?' + args;
        }
    };

    $qj.dealFunc = {
        /**
         * param 将JSON转为URL参数字符串的对象
         * key URL参数字符串的前缀
         * encode true/false 是否进行URL编码,默认为true
         *
         * return URL参数字符串
         */
        urlEncode: function (param, key, encode) {
            if (param == null) return '';
            var paramStr = '';
            var t = typeof (param);
            if (t == 'string' || t == 'number' || t == 'boolean') {
                paramStr += '&' + key + '=' + ((encode == null || encode) ? encodeURIComponent(param) : param);
            } else {
                for (var i in param) {
                    var k = key == null ? i : key + (param instanceof Array ? '[' + i + ']' : '.' + i);
                    paramStr += $qj.dealFunc.urlEncode(param[i], k, encode);
                }
            }
            return paramStr;
        },
        //用于生成uuid
        S4: function S4() {
            return (((1 + Math.random()) * 0x10000) | 0).toString(16).substring(1);
        },
        getUuid: function guid() {
            return ($qj.dealFunc.S4() + "-" + $qj.dealFunc.S4() + "-" + $qj.dealFunc.S4() + "-" + $qj.dealFunc.S4() + "-" + $qj.dealFunc.S4());
        },
        getCookie: function getCookie(name) {
            var arr, reg = new RegExp("(^| )" + name + "=([^;]*)(;|$)");
            if (arr = document.cookie.match(reg))
                return unescape(arr[2]);
            else
                return null;
        },
        delCookie: function delCookie(name) {
            var exp = new Date();
            exp.setTime(exp.getTime() - 1);
            var cval = $qj.dealFunc.getCookie(name);
            if (cval != null)
                document.cookie = name + "=" + cval + ";expires=" + exp.toGMTString();
        },
        setCookie: function setCookie(name, value, time) {
            var strsec = $qj.dealFunc.getsec(time);
            document.cookie = name + "=" + escape(value) + ";" + document.cookie;
        },
        getsec: function getsec(str) {
            var str1 = str.substring(1, str.length) * 1;
            var str2 = str.substring(0, 1);
            if (str2 == "s") {
                return str1 * 1000;
            }
            else if (str2 == "h") {
                return str1 * 60 * 60 * 1000;
            }
            else if (str2 == "d") {
                return str1 * 24 * 60 * 60 * 1000;
            }
        }
    };
    /**
     * 获取基础数据
     * @type {{getCurrentPageData: $qj.baseData.getCurrentPageData}}
     */
    $qj.baseData = {
        //获取当前页面的数据
        getCurrentPageData: function () {
            var params = {};

            //收集用户的dpa_uuid,time,
            if (document.cookie == "" || document.cookie.length == 0) {
                $qj.dealFunc.setCookie("dpa_uuid", $qj.dealFunc.getUuid(), "s60");
            }
            params.dpaUuid = $qj.dealFunc.getCookie("dpa_uuid");   //用户唯一标识号
            params.time = new Date().getTime(); //事件触发的时间

            //Document对象数据
            if (document) {
                params.domain = document.domain || '';  //域名
                params.url = document.URL || '';    //URL
            }
            //Window对象数据
            if (window && window.screen) {
                params.screenHeight = window.screen.height || 0; //当前窗口的可用高度
                params.screenWidth = window.screen.width || 0;   //当前窗口的可用宽度
            }

            //Navigator
            if (navigator) {
                params.os = navigator.platform;    //操作系统
                params.browserVersion = navigator.appVersion;
            }
            return params;
        }
    };
    /**
     * 获取元素的相关数据
     * @type {{readXPath: $qj.elementData.readXPath}}
     */
    $qj.elementData = {
        readXPath: function (element) {
            if (element.tagName == "HTML" || element.tagName == "undefined") {
                return '/html';
            }

            if (element == document.body) {//递归到body处，结束递归
                return '/html/' + element.tagName;
            }
            var ix = 0,//在nodelist中的位置，且每次点击初始化
                siblings = element.parentNode.childNodes;//同级的子元素

            for (var i = 0, l = siblings.length; i < l; i++) {
                var sibling = siblings[i];
                if (sibling == element) {//如果这个元素是siblings数组中的元素，则执行递归操作
                    return arguments.callee(element.parentNode) + '/' + element.tagName + ((ix + 1) == 1 ? '' : '[' + (ix + 1) + ']');//ix+1是因为xpath是从1开始计数的，element.tagName+((ix+1)==1?'':'['+(ix+1)+']')三元运算符，如果是第一个则不显示，从2开始显示
                } else if (sibling.nodeType == 1 && sibling.tagName == element.tagName) {//如果不符合，判断是否是element元素，并且是否是相同元素，如果是相同的就开始累加
                    ix++;
                }
            }
        }
    };

    $qj.eventFunc = {
        //页面加载事件
        onloadEvent: function () {
            return $qj.baseData.getCurrentPageData();
        }
    };
    /**
     * 自定义事件
     *
     * 用于一些特定的数据的采集
     *
     * @param eventName 事件名称
     * @param params    事件参数
     */
    $qj.track = function (eventName, params) {
        var para = $qj.eventFunc[eventName]();
        para.eventName = eventName;
        $qj.option.send(para);
    };
    /**
     * 自动监听元素的点击事件
     */
    window.addEventListener("click", function (e) {
        var params = $qj.baseData.getCurrentPageData();
        params.eventName = "clickEvent";
        e.stopPropagation();    //停止冒泡
        params.eXPath = $qj.elementData.readXPath(e.target);    //获取元素的XPath路径
        $qj.option.send(params);
    });

})();
