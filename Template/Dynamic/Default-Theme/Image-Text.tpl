
<block type="config">
    <template>
        <![CDATA[
 
        {function localeConfig($config, $localeId)}
            <div class="row">
                <div class="col-xs-12">
                    <label>{_('Pre-Headline')}</label>
                    <input type="text" class="form-control" name="config[{$localeId}][preheadline]" value="{$config->$localeId->preheadline}" />
                </div>
            </div>
            <div class="row">
                <div class="col-xs-12">
                    <label>{_('Headline')}</label>
                    <input type="text" class="form-control" name="config[{$localeId}][headline]" value="{$config->$localeId->headline}" />
                </div>
            </div>
            <div class="row">
                <div class="col-xs-12">
                    <label>
                        {_('Text')}
                    </label>
                    <textarea name="config[{$localeId}][rte]" class="form-control" data-rte='{ "toolbar":[{ "name":"document","groups":["mode","document","doctools"],"items":["Source","-"] },{ "name":"clipboard","groups":["clipboard","undo"],"items":["Cut","Copy","Paste","PasteText","PasteFromWord","-","Undo","Redo"] },{ "name":"editing","groups":["find","selection","spellchecker"],"items":["Find","Replace","-","SelectAll","-","Scayt"] },{ "name":"tools","items":["Maximize","ShowBlocks"] },"/",{ "name":"insert","items":["Image","Flash","Table","HorizontalRule","SpecialChar","Iframe"] },{ "name":"paragraph","groups":["list","indent","blocks","align","bidi"],"items":["NumberedList","BulletedList","-","Outdent","Indent","-","Blockquote","CreateDiv","-","JustifyLeft","JustifyCenter","JustifyRight","JustifyBlock","-","BidiLtr","BidiRtl"] },{ "name":"links","items":["Link","Unlink","Anchor"] },{ "name":"basicstyles","groups":["basicstyles","cleanup"],"items":["Bold","Italic","Underline","Strike","Subscript","Superscript","-","RemoveFormat"] },{ "name":"styles","items":["Styles","Format","Font","FontSize"] },{ "name":"colors","items":["TextColor","BGColor"] }] }'>{$config->$localeId->rte}</textarea>
                </div>
            </div>
            <div class="row">
                <div class="col-xs-12">
                    <label>{_('Image')}</label>
                    <input type="text" class="form-control" name="config[{$localeId}][image]" value="{$config->$localeId->image}" data-absolutepath="false" data-filepath="true" data-singlefileselect="1" data-filefilter="*.jpg,*.png" />
                </div>
            </div>
            
            
            
            <div class="row">
                <div class="col-xs-12">
                    <label>{_('Headline')}</label>
                    <input type="text" class="form-control" name="config[{$localeId}][headline]" value="{$config->$localeId->headline}" />
                </div>
            </div>
            <div class="row">
                <div class="col-xs-12">
                    <label>
                        {_('Text')}
                    </label>
                    <textarea name="config[{$localeId}][text]" class="form-control">{$config->$localeId->text}</textarea>
                </div>
            </div>
            <div class="row">
                <div class="col-xs-12">
                    <label>{_('Image')}</label>
                    <input type="text" class="form-control" name="config[{$localeId}][image]" value="{$config->$localeId->image}" data-absolutepath="false" data-filepath="true" data-singlefileselect="1" data-filefilter="*.jpg,*.png" />
                </div>
            </div>
        {/function}

        <div>
            <ul class="nav nav-tabs" role="tablist">
                {foreach $locales as $key => $locale}
                    <li role="presentation" class="{if isFirst($locales, $key)}active{/if}"><a href="#locale-{$locale.id}" data-toggle="tab">{$locale.name}</a></li>
                {/foreach}
            </ul>
            <div class="tab-content">
                {foreach $locales as $key => $locale}
                    <div role="tabpanel" class="tab-pane{if isFirst($locales, $key)} active{/if}" id="locale-{$locale.id}">
                        {localeConfig($config, $locale.id)}
                    </div>
                {/foreach}
            </div>
        </div>

        ]]>
    </template>
</block>

<div id="tf-about">
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <block type="image" maxWidth="555" method="resize" src="{$config->$locale->image}" class="img-responsive"></block>
            </div>
            <div class="col-md-6">
                <div class="about-text">
                    {if $config->$locale->headline}
                        <div class="section-title">
                            {if $config->$locale->preheadline || $inEditMode}<h4{if $inEditMode} data-inline-editor-field="preheadline"{/if}>{$config->$locale->preheadline}</h4>{/if}
                            <h2{if $inEditMode} data-inline-editor-field="headline"{/if}>{$config->$locale->headline}</h2>
                            <hr>
                            <div class="clearfix"></div>
                        </div>
                    {/if}

                    <div{if $inEditMode} data-inline-editor-rte="true" data-inline-editor-field="rte"{/if}>{{$config->$locale->rte}}</div>
                </div>
            </div>
        </div>
    </div>
</div>