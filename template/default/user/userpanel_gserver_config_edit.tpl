<section class="content-header">
    <h1><?php echo $gsprache->gameserver;?></h1>
    <ol class="breadcrumb">
        <li><a href="userpanel.php"><i class="fa fa-home"></i> Home</a></li>
        <li><a href="userpanel.php?w=gs"><i class="fa fa-gamepad"></i> <?php echo $gsprache->gameserver;?></a></li>
        <li><i class="fa fa-cogs"></i> <?php echo $sprache->config;?></li>
        <li class="active"><?php echo $serverip.':'.$port;?></li>
    </ol>
</section>

<section class="content">

	<?php if($userWantsHelpText=='Y'){ ?>
    <div class="row hidden-xs">
        <div class="col-md-12">
            <div class="alert alert-info alert-dismissable">
                <i class="fa fa-info"></i>
                <?php echo $sprache->help_config;?>
            </div>
        </div>
    </div>
	<?php } ?>
    <div class="row">
        <div class="col-md-12">
            <div class="box box-primary">
                <div class="box-body table-responsive no-padding">
                    <table class="table table-hover table-bordered">
                        <tbody>
                        <?php foreach ($configs as $config){ ?>
                        <tr>
                            <td><strong><?php echo $config['line'];?></strong></td>
                            <td class="span3">
                                <?php if($config['permission']=="easy" or $config['permission']=="both") { ?>
                                <a href="userpanel.php?w=gs&amp;d=cf&amp;id=<?php echo $id;?>&amp;type=easy&amp;config=<?php echo urlencode($config['line']);?>"><span class="btn-primary btn-sm"><i class="fa fa-edit"></i> <?php echo $sprache->easy;?></span></a>
                                <?php } ?>
                                <?php if($config['permission']=="full" or $config['permission']=="both") { ?>
                                <a href="userpanel.php?w=gs&amp;d=cf&amp;id=<?php echo $id;?>&amp;type=full&amp;config=<?php echo urlencode($config['line']);?>"><span class=" btn-primary btn-sm"><i class="fa fa-edit"></i> <?php echo $sprache->full;?></span></a>
                                <?php } ?>
                            </td>
                        </tr>
                        <?php } ?>
                        </tbody>
                    </table>
                </div><!-- /.box-body -->
            </div><!-- /.box -->
        </div>
</section>