<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">

    <?php if(isset($header)) echo $header;?>
    <title><?php if(isset($title)) echo $title;?></title>

    <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>

    <meta name="robots" content="noindex">
    <link rel="shortcut icon" type="image/x-icon" href="<?php echo (isset($rSA['favicon'])) ? $rSA['favicon'] : 'images/favicon.ico';?>" />

    <!-- bootstrap -->
    <link href="css/default/bootstrap.min.css" rel="stylesheet">

    <!-- font Awesome -->
    <link href="css/default/font-awesome.min.css" rel="stylesheet">

    <!-- Theme style -->
    <link href="css/default/AdminLTE.css" rel="stylesheet" type="text/css" />

    <?php echo implode('',$htmlExtraInformation['css']);?>

    <?php echo implode('',$htmlExtraInformation['js']);?>

</head>

<body class="login-page" <?php echo implode(' ',$htmlExtraInformation['body']);?>>

<div class="login-box">
    <div class="login-logo">
      <a href="login.php"><?php echo (empty($rSA['login_header_text'])) ? '' : getLoginHeader($rSA['login_header_text']); ?></a>
    </div>
    <div class="login-box-body">

        <p class="login-box-msg"><?php echo $sprache->passwordr;?></p>

        <form action="login.php?w=pr<?php echo $token;?>" method="post">

            <?php if (isset($send) and $send==true) { ?>
            <div class="form-group">
                <?php echo $text;?>
            </div>

            <div class="row">
                <div class="col-xs-12">
                    <button type="submit" class="btn btn-primary btn-block btn-flat"><?php echo $sprache->back;?></button>
                </div>
            </div>

            <?php } else if (isset($recover) and $recover==true) { ?>

            <div class="form-group has-feedback">
                <input type="password" id="inputPass" name="password1" class="form-control" placeholder="<?php echo $sprache->password;?>" required>
                <span class="fa fa-lock form-control-feedback"></span>
            </div>

            <div class="form-group has-feedback">
                <input type="password" id="inputPassRepeat" name="password2" class="form-control" placeholder="<?php echo $sprache->password;?>" required>
                <span class="fa fa-lock form-control-feedback"></span>
            </div>

            <div class="row">
                <div class="col-xs-12">
                    <button type="submit" class="btn btn-primary btn-block btn-flat"><?php echo $sprache->passwordreset;?></button>
                </div>
            </div>

            <?php } else if (isset($recover) and $recover==false) { ?>

            <div class="form-group">
                <?php echo $sprache->linkexpired;?>
            </div>

            <div class="row">
                <div class="col-xs-12">
                    <button type="submit" class="btn btn-primary btn-block btn-flat"><?php echo $sprache->back;?></button>
                </div>
            </div>

            <?php } else if (isset($text)) { ?>

            <div class="form-group">
                <?php echo $text;?>
            </div>

            <div class="row">
                <div class="col-xs-12">
                    <button type="submit" class="btn btn-primary btn-block btn-flat"><?php echo $sprache->back;?></button>
                </div>
            </div>

            <?php } else { ?>

            <div class="form-group has-feedback">
                <input type="text" name="um" class="form-control" placeholder="<?php echo $sprache->email;?>" required>
                <span class="fa fa-envelope form-control-feedback"></span>
            </div>

            <div class="row">
                <div class="col-xs-12">
                    <button type="submit" class="btn btn-primary btn-block btn-flat"><?php echo $sprache->passwordreset;?></button>
                </div>
            </div>
            <?php } ?>

        </form>

    </div><!-- /.login-box-body -->

    <div>
        &copy; <a href="https://easy-wi.com" target="_blank" title="free gameserver, voiceserver, dedicated and virtualserver webinterface easy-wi.com">Easy-WI.com</a> 2011 - <?php echo date('Y'); ?>
    </div>
</div>

<!-- jQuery -->
<script src="js/default/jquery.min.js" type="text/javascript"></script>

<!-- Bootstrap JS -->
<script src="js/default/bootstrap.min.js" type="text/javascript"></script>

</body>
</html>