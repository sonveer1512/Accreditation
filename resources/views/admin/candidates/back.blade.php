<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Document</title>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Fira+Sans:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Raleway:ital,wght@0,100;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap');

        .khelo_india_logo {
            background-image: url("{{ asset('uploads/pagedata/khelo india logo.png') }}");
            width: 113px;
            height: 261px;
        }

        .khelo_india_text {
            background-image: url("{{ asset('uploads/pagedata/khelo india text.png') }}");
            width: 113px;
            height: 90px;
        }

        .outline {
            border-width: 6px;
            border-color: rgb(0, 0, 0);
            border-style: solid;
            border-radius: 0px;
            left: 308px;
            top: 1354px;
            width: 612px;
            height: 115px;
            z-index: 3;
        }

        .bottom {
            background-color: {{ $item->color}};
            width: 100%;
            height: 68px;
            -webkit-print-color-adjust: exact;
        }

        .picture_bg {
            background-image: url("{{ asset('uploads/pagedata/picture bg.png') }}");
            left: 151px;
            top: 242px;
            width: 818px;
            height: 568px;
            z-index: 5;
        }

        .frame {
            background-color: rgb(255, 255, 255);
            left: 413px;
            top: 380px;
            width: 430px;
            height: 430px;
            z-index: 6;
        }

        .mainframe {
            border: 1px dashed #bfbaba;
            width: 332px;
            height: 529px;
            overflow: hidden;
        }

        .mainframe .left {
            margin-left: 10px;
        }

        .box {
            height: 132px;
            width: 120px;
            background-color: #555;
        }

        .box2 {
            height: 42px;
            width: 205px;
            border: 1px solid black;
        }

        .textflip {
            -moz-transform: scale(-1, 1);
            -webkit-transform: scale(-1, 1);
            -o-transform: scale(-1, 1);
            -ms-transform: scale(-1, 1);
            transform: scale(-1, 1);
        }
    </style>
</head>

<body>
    <table style="width: 100%; height:1133px; width: 755px; margin: auto;">
        <tr>
            @for($i = 0; $i < 4; $i++) @if($i%2==0) <td style="display: flex; justify-content: center;">
                @endif
                <table class="mainframe" style="border-spacing: 0px;">
                    <tr>
                        <td class="bottom">
                            <div style="font-size: 60px; text-align: center; color: white;"></div>
                        </td>
                    </tr>
                    <tr>
                        <td style="padding: 0px 5px;">
                            <img src="{{ asset('uploads/pagedata/back.jpeg') }}" width="100%" class="textflip">
                        </td>
                    </tr>
                </table>

                @if($i%2 == 1)
                </td>
                @endif
                @endfor
        </tr>
    </table>
</body>

</html>