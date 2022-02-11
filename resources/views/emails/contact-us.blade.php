<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Dalbit Petroleum Website - Contact Message</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
    <style>
        body {
            font-family: arial, helvetica, sans-serif;
            font-size: 14px;
            line-height: 20px;
            color: #444;
            background: #041160;
        }

        p {
            margin: 10px 0;
        }

        a {
            color: #ffac20;
            text-decoration: none;
            font-weight: bold;
        }

        a:hover {
            color: #bf6516;
        }

        .wrapper {
            margin: 20px 0;
        }

        .content {
            display: block !important;
            max-width: 600px !important;
            margin: 0 auto !important;
            clear: both !important;
            background: white;
        }

        .brand {
            font-size: 30px;
            margin: 20px 0;
        }

        .brand span {
            color: #ffac20;
        }

        .date {
            color: #999;
        }

        h1 {
            font-size: 30px;
            color: #ffac20;
            margin: 30px 0;
        }

        h2 {
            font-size: 20px;
            color: #ffac20;
            margin: 30px 0;
        }

        .border {
            border-top: 2px solid #ffac20;
            border-bottom: 2px solid #ffac20;
        }

        .contact {
            font-size: 11px;
            color: #999;
        }

        .testimonial {
            margin-bottom: 10px;
        }

        .testimonial h3 {
            margin-bottom: 0;
        }

        .testimonial p {
            margin: 5px 0 0;
        }

        .testimonial .stars {
            color: #ffac20;
        }

    </style>

</head>

<body style="background-color: #041160;">
    <table width="100%" class="wrapper" style="padding-top: 50px !important; padding-bottom:50px">
        <tr>
            <td class="container">
                <div class="content">
                    <table cellspacing="20" width="100%">
                        <tr>
                            <td>
                                <p class="brand">
                                    {{-- <span>Dalbit Petroleum</span> --}}
                                     <img class=""
                                        src="https://www.dalbitpetroleum.com/images/logo.png" alt="logo"
                                        style="height: 100px;margin-left:350px;"></p>
                            </td>
                        </tr>
                        <tr>
                            <td class="border">
                                <p class="date">{{ $created_at }}</p>
                                <p>Hello,</p>
                                <p>This message is coming from the website <a href="https://www.dalbitpetroleum.com/"
                                        style="color: rgb(19, 19, 138);" target="_blank"
                                        rel="noopener noreferrer">(Dalbit Petroleum).</a></p>
                                <h2>Message Details</h2>

                                <div class="testimonial">
                                    <h3>Name</h3>
                                    <p style="text-transform: capitalize">"{{ $name }}"</p>
                                </div>

                                <div class="testimonial">
                                    <h3>Email</h3>
                                    <p style="text-transform: lowercase">"{{ $email }}"</p>
                                </div>

                                <div class="testimonial">
                                    <h3>Phone</h3>
                                    <p>"{{ $telephone_number }}"</p>
                                </div>

                                <div class="testimonial">
                                    <h3>Message</h3>
                                    <p>"{!! $message_body !!}"</p>
                                </div>
                            </td>
                        </tr>
                    </table>
                </div>
            </td>
        </tr>
    </table>
    <!-- partial -->

</body>

</html>
