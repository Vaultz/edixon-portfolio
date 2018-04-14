<!DOCTYPE html>

<html style= "background-image: url(../../../DualQuizz/ressources/img/bckgrnd01.png); background-size: cover;">
    <head>
        <meta charset='UTF-8' />
        <title>Duel Quizz</title>
        <link rel="icon" href="images/linkeeper-favicon.png" />
		
        <link href="ressources/css/bootstrap.css" rel="stylesheet">
        <link href="ressources/css/main.css" rel="stylesheet">
        <script src="ressources/js/html5shiv.js"></script>
        <script src="ressources/js/respond.min.js"></script>
        <script src="ressources/js/main.js"></script>
    </head>

    <body style= "background : none;">
        <section>
                    <?php 
                            if(isset($output['content'])) {
                                echo  "
                                <div class = 'panel panel-default' style ='background : none; border : none; margin-left: auto ; margin-right: auto ;margin-top : 150px; text-align: center; width : 66%; padding-bottom: 25px; min-height : 450px;'>
                                    <div class = 'panel-body' style = 'height: 250px; padding-top : 75px; '>";
                                        echo $output['content']; 
                                    echo  "
                                    </div>
                                </div>";
                            }
                    ?>
            </div>
        </section>
    </body>
    <script src="ressources/js/jquery.js"></script>
    <script src="ressources/js/bootstrap.min.js"></script>
</html>
