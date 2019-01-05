$(function () {
	
var obj;
   /*     $('#tab li').mouseover(function () {
            $(this).find('.sub').slideDown();
            $(this).find('a').addClass('active')
        })
        $('#tab li').mouseleave(function () {
        	$(this).find('.sub').slideUp();
            
            $(this).find('a').removeClass('active');
        })*/
          $("#tab li").hover(function(){
        	var obj2=  $(this);
        	  if(obj==obj2){
         		 debugger;
         		 return;}

        	  $(this).find('.sub').slideDown("fast",function(){});
              $(this).find('a').addClass('active')
               obj=$(this);
    },function(){
    	obj.find('.sub').slideUp("fast");
        obj.find('a').removeClass('active');
  });
        //ui-slider

        //    图片所在的盒子
        var ui = $('.ui-slider-wrap');
        //   所有的图片
        var items = $('.ui-slider-wrap .item');
        //    上一页
        var prev = $('.ui-slider-arrow .left');
        // 下一页
        var next = $('.ui-slider-arrow .right');
        // 进度
        var tips = $('.ui-slider-process .item');
        // 图片的个数
        var imgCount = items.size();
        // 图片的宽度
        var imgWidth = items.width();
        // 把第一张放到最后
        ui.append(items.first().clone());
        // 把最后一张放到第一张
        ui.prepend(items.last().clone());
        // 最新的图片个数
        var newCount = ui.children().size();
        // 进度条的小圆
        var　 tips = $('.ui-slider-process .item');

        // 初始化设置
        ui.css({
            left: 0 - imgWidth,
            width: newCount * imgWidth,
        })


        var curidx = 0;
        var mov = 1;

        function playnext() {
            items.triggerHandler('mouseover');
            ui.animate({
                left: '-=' + mov * imgWidth
            }, function () {
                curidx += mov;
                if (curidx === imgCount) {
                    ui.css({
                        left: 0 - imgWidth
                    });
                    curidx = 0;
                }
                tips.removeClass('item_focus').eq(curidx).addClass('item_focus');

            })
            items.triggerHandler('mouseout');
        }
        function slide(obj){
        	
    		obj.find('.sub').slideUp();
            obj.find('a').removeClass('active');
    	}
        function playpre() {
            ui.animate({
                left: '+=' + mov * imgWidth
            }, function () {
                curidx -= mov;
                if (curidx === (-1)) {
                    ui.css({
                        left: 0 - imgWidth * imgCount,
                    });
                    curidx = imgCount - 1;
                }
                tips.removeClass('item_focus').eq(curidx).addClass('item_focus');

            })
        }

        var lunbo = setInterval(function () {
            playnext()
        }, 3000);

        next.on('click', function () {
            playnext();
        })
        prev.on('click', function () {
            playpre();
        })
        items.on('mouseover', function () {
            clearInterval(lunbo)
            return false;
        }).on('mouseout', function () {
            lunbo = setInterval(function () {
                playnext()
            }, 4000);
            return false;

        })


        tips.on('click', function () {
            next.triggerHandler('click')
        })


    })