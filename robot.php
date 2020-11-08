<?php
    if (isset($_POST['button_forward']))
    {
        //All PINS acording to WiringPi.

        system("gpio mode 5 out");
        system("gpio write 5 1");

        system("gpio mode 23 out");
        system("gpio write 23 1");

        system("gpio mode 7 out");
        system("gpio write 7 1");

        system("gpio mode 0 out");
        system("gpio write 0 0");

        system("gpio mode 2 out");
        system("gpio write 2 1");

        system("gpio mode 3 out");
        system("gpio write 3 0");
    }
    if (isset($_POST['button_backward']))
    {
        //All PINS acording to WiringPi.

        system("gpio mode 5 out");
        system("gpio write 5 1");

        system("gpio mode 23 out");
        system("gpio write 23 1");

        system("gpio mode 7 out");
        system("gpio write 7 0");

        system("gpio mode 0 out");
        system("gpio write 0 1");

        system("gpio mode 2 out");
        system("gpio write 2 0");

        system("gpio mode 3 out");
        system("gpio write 3 1");
    }
    if (isset($_POST['button_left']))
    {
        //All PINS acording to WiringPi.

        system("gpio mode 5 out");
        system("gpio write 5 1");

        system("gpio mode 23 out");
        system("gpio write 23 1");

        system("gpio mode 7 out");
        system("gpio write 7 0");

        system("gpio mode 0 out");
        system("gpio write 0 1");

        system("gpio mode 2 out");
        system("gpio write 2 1");

        system("gpio mode 3 out");
        system("gpio write 3 0");
    }
    if (isset($_POST['button_right']))
    {
        //All PINS acording to WiringPi.

        system("gpio mode 5 out");
        system("gpio write 5 1");

        system("gpio mode 23 out");
        system("gpio write 23 1");

        system("gpio mode 7 out");
        system("gpio write 7 1");

        system("gpio mode 0 out");
        system("gpio write 0 0");

        system("gpio mode 2 out");
        system("gpio write 2 0");

        system("gpio mode 3 out");
        system("gpio write 3 1");
    }
    else if (isset($_POST['button_stop']))
    {
        system("gpio write 7 0");
        system("gpio write 0 0");
        system("gpio write 2 0");
        system("gpio write 3 0");
    }
?>
    <html>

    <body>

        <div style="text-align:center">

            <style type="text/css">
                .tg {
                    border-collapse: collapse;
                    border-spacing: 0;
                    margin: 0px auto;
                }
                
                .tg td {
                    font-family: Arial, sans-serif;
                    font-size: 14px;
                    padding: 10px 5px;
                    border-style: solid;
                    border-width: 1px;
                    overflow: hidden;
                    word-break: normal;
                }
                
                .tg th {
                    font-family: Arial, sans-serif;
                    font-size: 14px;
                    font-weight: normal;
                    padding: 10px 5px;
                    border-style: solid;
                    border-width: 1px;
                    overflow: hidden;
                    word-break: normal;
                }
                
                .tg .tg-yw4l {
                    vertical-align: top
                }
            </style>

            <form method="post">
                <table class="tg">
                    <tr>
                        <th class="tg-yw4l">
                            <center>
                                <div><img id="mjpeg_dest" /></div>
                            </center>
                        </th>
                        <th class="tg-yw4l"><button style="height: 75px; width: 75px" name="button_forward"><img style="height: 65px"src="images/forward.png"></button>
                            <br><br><br><br>
                            <img hspace="10" style="padding-left: 5px">
                            <button style="height: 75px; width: 75px" name="button_left" "><img style="height: 65px "src="images/left.png "></button>
        <img hspace="20 " style="padding-left: 10px ">
        <button style="height: 75px; width: 75px " name="button_stop "><img style="height: 63px "src="images/stop.png "></button>
        <img hspace="20 " style="padding-left: 10px ">
        <button style="height: 75px; width: 75px " name="button_right "><img style="height: 65px "src="images/right.png "></button>
        <img hspace="10 " style="padding-left: 5px ">
        <br><br><br><br>
        <button style="height: 75px; width: 75px " name="button_backward "><img style="height: 65px "src="images/reverse.png "></button><br><br>
</th>
</th>

</th>
</tr>

</table>
</form>