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
            background-color: #3f51b5;
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

        .btn {
            display: inline-block;
            font-weight: 400;
            line-height: 1.5;
            color: #212529;
            text-align: center;
            text-decoration: none;
            vertical-align: middle;
            cursor: pointer;
            -webkit-user-select: none;
            -moz-user-select: none;
            -ms-user-select: none;
            user-select: none;
            background-color: transparent;
            border: 1px solid transparent;
            padding: 0.5rem 0.9rem;
            font-size: .8125rem;
            border-radius: 0.25rem;
            -webkit-transition: color .15s ease-in-out, background-color .15s ease-in-out, border-color .15s ease-in-out, -webkit-box-shadow .15s ease-in-out;
            transition: color .15s ease-in-out, background-color .15s ease-in-out, border-color .15s ease-in-out, -webkit-box-shadow .15s ease-in-out;
            transition: color .15s ease-in-out, background-color .15s ease-in-out, border-color .15s ease-in-out, box-shadow .15s ease-in-out;
            transition: color .15s ease-in-out, background-color .15s ease-in-out, border-color .15s ease-in-out, box-shadow .15s ease-in-out, -webkit-box-shadow .15s ease-in-out;
        }

        .btn-primary {
            color: #fff;
            background-color: #4b38b3;
            border-color: #4b38b3;
        }

        svg {
            width: 60px;
            height: 60px;
        }
    </style>
</head>

<body>

    <!-- <table style="width:100%">
        <tr>
            <td>
                @if($item->id > 1)
                <a href="{{ url('admin/candidates/view/'.($item->id - 1)) }}" class="btn btn-primary">Previous</a>
                @endif
            </td>
            <td style="text-align: right;">
                <a href="{{ url('admin/candidates/view/'.($item->id + 1)) }}" class="btn btn-primary">Next</a>
            </td>
        </tr>
    </table> -->

    @php
    $generatorPNG = new Picqer\Barcode\BarcodeGeneratorPNG();
    @endphp


    <table style="width: 100%; height:1133px; width: 755px; margin: auto;">
        <tr>
            @for($i = 0; $i < 4; $i++) @if($i%2==0) <td style="display: flex; justify-content: center;">
                @endif
                <table class="mainframe" style="border-spacing: 0px;">
                    <tr>
                        <td style="width: 50%; padding: 5px;">
                            <img src="{{ asset('uploads/pagedata/khelo india text.png') }}" style="width: 105px; height: 30px">
                        </td>
                        <td style="width: 50%; padding: 5px; text-align: right;">
                            <img src="{{ asset('uploads/pagedata/khelo india logo.png') }}" style="width: 113px; height: 68px">
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 100%; text-align: -webkit-center;" colspan="2">
                            <div class="box" style="background: white; overflow: hidden; position: absolute; margin-left: 105px; margin-top: 36px;">
                                <img src="{{ asset('uploads/pagedata/person.jpeg') }}" style="width: 100%; height: 100%; object-fit: cover;">
                            </div>
                            <img src="{{ asset('uploads/pagedata/picture bg.png') }}" style="width: 226px; height: 170px">

                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" class="textflip" style="padding-top: 7px; text-align: center; font-size: 19px; font-family: sans-serif; font-weight: 700; letter-spacing: -0.5px;">
                            {{ strtoupper($item->first_name) ?? '' }}
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" class="textflip" style="text-align: center; font-size: 19px; font-family: sans-serif; font-weight: 700; letter-spacing: -0.5px;">
                            {{ strtoupper($item->sport) ?? '' }}
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" class="textflip" style="text-align: center; font-size: 19px; font-family: sans-serif; font-weight: 700; letter-spacing: -0.5px;">
                            {{ strtoupper($item->state) ?? '' }} | U18
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" class="textflip" style="padding: 8px 0px; text-align: center; font-size: 34px; font-family: sans-serif; font-weight: 700; letter-spacing: -0.5px;">
                            FOP 1 2 3 4
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" style="text-align: -webkit-center; padding-bottom: 1px;">
                            <div style="background: white; border-radius: 5px;">
                                <!-- <img src="data:image/png;base64,{{ base64_encode($generatorPNG->getBarcode('000005263635', $generatorPNG::TYPE_CODE_128)) }}" class="textflip"> -->
                                {!! QrCode::size(300)->generate('KIYG202200001') !!}
                                <!-- <p class="textflip" style="margin: 0px; font-size: 12px;">KIYG202200001</p> -->
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" class="bottom textflip">
                            <div style="font-size: 45px; text-align: center;font-family: sans-serif; color: white;">IOA</div>
                        </td>
                    </tr>
                </table>

                @if($i%2 == 1)
                </td>
                @endif
                @endfor
        </tr>

    </table>


    <!-- <div class="mainframe">
        <table style="width: 100%;border-spacing: 0px;">
            <tr>
                <td class="bottom">
                    <div style="font-size: 60px; text-align: center; color: white;"></div>
                </td>
            </tr>
            <tr>
                <td>
                    <img src="{{ asset('uploads/pagedata/back.jpeg') }}" width="100%" class="textflip">
                </td>
            </tr>
        </table>
    </div> -->
</body>

</html>