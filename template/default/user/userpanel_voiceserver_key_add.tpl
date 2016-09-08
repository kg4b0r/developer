<section class="content-header">
    <h1><?php echo $gsprache->voiceserver;?> Token <?php echo $gsprache->add;?></h1>
    <ol class="breadcrumb">
        <li><a href="userpanel.php"><i class="fa fa-home"></i> Home</a></li>
        <li><a href="userpanel.php?w=vo"><i class="fa fa-microphone"></i> <?php echo $gsprache->voiceserver;?></a></li>
        <li><a href="userpanel.php?w=vo&amp;d=pk&amp;id=<?php echo $id;?>"><i class="fa fa-key"></i> Token</a></li>
        <li><?php echo $gsprache->add;?></li>
        <li class="active"><?php echo $address;?></li>
    </ol>
</section>


<section class="content">

	<?php if($userWantsHelpText=='Y'){ ?>
    <div class="row hidden-xs">
        <div class="col-md-12">
            <div class="alert alert-info alert-dismissable">
                <i class="fa fa-info"></i>
                <?php echo $sprache->help_voiceserver_key;?>
            </div>
        </div>
    </div>
	<?php } ?>

    <div class="row">
        <div class="col-md-12">
            <div class="box box-success">
                <form role="form" action="userpanel.php?w=vo&amp;d=pk&amp;id=<?php echo $id;?>&amp;r=vo" onsubmit="return confirm('<?php echo $gsprache->sure;?>');" method="post">

                    <input type="hidden" name="action" value="ad">

                    <div class="box-body">
                        <div class="form-group">
                            <label for="groupname"><?php echo $sprache->groupname;?></label>
                            <select class="form-control" id="groupname" name="group">
                                <?php foreach ($servergroups as $id => $name) { ?>
                                <option value="<?php echo $id; ?>"><?php echo $name; ?></option>
                                <?php } ?>
                            </select>
                        </div>
                    </div>

                    <div class="box-footer">
                        <button class="btn btn-success" id="inputEdit" type="submit"><i class="fa fa-plus-circle"></i> <?php echo $gsprache->add;?></button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</section>