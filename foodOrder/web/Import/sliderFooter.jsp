<%-- 
    Document   : slider3
    Created on : Feb 3, 2015, 12:37:40 AM
    Author     : Suresh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<style>
    #slider div.sliderInner {
    width: 1200px!important;
    height: 400px;
}
    
#sliderFrame {
    position: relative;
    background-color: #E6E6E6;
}


#slider {
    background: url("loading.gif") no-repeat scroll 50% 50% transparent;
    position: relative;
    margin: 0px auto;
    transform: translate3d(0px, 0px, 0px);
    width: 1200px!important;
   
}
img{   border-radius: 500px;}

#sliderFrame {
    position: relative;
    background-color:transparent;
}

</style>

    
<div id="sliderFrame" style="margin-top: 10px;">
    <div id="slider">
            <img src="themes/images/slider/fd1.png"  />
            <img src="themes/images/slider/fd2.jpg"  />
            <img src="themes/images/slider/f1.jpg" />
            <img src="themes/images/slider/fd4.jpg" />
        </div>
        <!--Custom navigation buttons on both sides-->
        <div class="group1-Wrapper">
            <a onclick="imageSlider.previous()" class="group1-Prev"></a>
            <a onclick="imageSlider.next()" class="group1-Next"></a>
        </div>
        <!--nav bar-->
        
    </div>


    <script type="text/javascript">
        //The following script is for the group 2 navigation buttons.
        function switchAutoAdvance() {
            imageSlider.switchAuto();
            switchPlayPauseClass();
        }
        function switchPlayPauseClass() {
            var auto = document.getElementById('auto');
            var isAutoPlay = imageSlider.getAuto();
            auto.className = isAutoPlay ? "group2-Pause" : "group2-Play";
            auto.title = isAutoPlay ? "Pause" : "Play";
        }
        switchPlayPauseClass();
    </script>