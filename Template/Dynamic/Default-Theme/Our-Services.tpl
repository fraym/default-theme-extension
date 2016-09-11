
<block type="config">
    <template>
        <![CDATA[
       
        {function localeConfig($config, $localeId)}
            <div class="row">
                <div class="col-xs-12">
                    <label>{_('Headline')}</label>
                    <input type="text" class="form-control" name="config[{$localeId}][headline]" value="{$config->$localeId->headline}" />
                </div>
            </div>
            <div class="row">
                <div class="col-xs-12">
                    <label>
                        {_('Small text')}
                    </label>
                    <textarea name="config[{$localeId}][smallText]" class="form-control">{$config->$localeId->smallText}</textarea>
                </div>
            </div>
            <div class="row">
                <div class="col-xs-12">
                    <label>
                        {_('Icon 1 Text')}
                    </label>
                    <textarea name="config[{$localeId}][icon1]" class="form-control" data-rte='{ "toolbar":[{ "name":"document","groups":["mode","document","doctools"],"items":["Source","-"] },{ "name":"clipboard","groups":["clipboard","undo"],"items":["Cut","Copy","Paste","PasteText","PasteFromWord","-","Undo","Redo"] },{ "name":"editing","groups":["find","selection","spellchecker"],"items":["Find","Replace","-","SelectAll","-","Scayt"] },{ "name":"tools","items":["Maximize","ShowBlocks"] },"/",{ "name":"insert","items":["Image","Flash","Table","HorizontalRule","SpecialChar","Iframe"] },{ "name":"paragraph","groups":["list","indent","blocks","align","bidi"],"items":["NumberedList","BulletedList","-","Outdent","Indent","-","Blockquote","CreateDiv","-","JustifyLeft","JustifyCenter","JustifyRight","JustifyBlock","-","BidiLtr","BidiRtl"] },{ "name":"links","items":["Link","Unlink","Anchor"] },{ "name":"basicstyles","groups":["basicstyles","cleanup"],"items":["Bold","Italic","Underline","Strike","Subscript","Superscript","-","RemoveFormat"] },{ "name":"styles","items":["Styles","Format","Font","FontSize"] },{ "name":"colors","items":["TextColor","BGColor"] }] }'>{$config->$localeId->icon1}</textarea>
                </div>
            </div>
            <div class="row">
                <div class="col-xs-12">
                    <label>
                        {_('Icon 2 Text')}
                    </label>
                    <textarea name="config[{$localeId}][icon2]" class="form-control" data-rte='{ "toolbar":[{ "name":"document","groups":["mode","document","doctools"],"items":["Source","-"] },{ "name":"clipboard","groups":["clipboard","undo"],"items":["Cut","Copy","Paste","PasteText","PasteFromWord","-","Undo","Redo"] },{ "name":"editing","groups":["find","selection","spellchecker"],"items":["Find","Replace","-","SelectAll","-","Scayt"] },{ "name":"tools","items":["Maximize","ShowBlocks"] },"/",{ "name":"insert","items":["Image","Flash","Table","HorizontalRule","SpecialChar","Iframe"] },{ "name":"paragraph","groups":["list","indent","blocks","align","bidi"],"items":["NumberedList","BulletedList","-","Outdent","Indent","-","Blockquote","CreateDiv","-","JustifyLeft","JustifyCenter","JustifyRight","JustifyBlock","-","BidiLtr","BidiRtl"] },{ "name":"links","items":["Link","Unlink","Anchor"] },{ "name":"basicstyles","groups":["basicstyles","cleanup"],"items":["Bold","Italic","Underline","Strike","Subscript","Superscript","-","RemoveFormat"] },{ "name":"styles","items":["Styles","Format","Font","FontSize"] },{ "name":"colors","items":["TextColor","BGColor"] }] }'>{$config->$localeId->icon2}</textarea>
                </div>
            </div>
            <div class="row">
                <div class="col-xs-12">
                    <label>
                        {_('Icon 3 Text')}
                    </label>
                    <textarea name="config[{$localeId}][icon3]" class="form-control" data-rte='{ "toolbar":[{ "name":"document","groups":["mode","document","doctools"],"items":["Source","-"] },{ "name":"clipboard","groups":["clipboard","undo"],"items":["Cut","Copy","Paste","PasteText","PasteFromWord","-","Undo","Redo"] },{ "name":"editing","groups":["find","selection","spellchecker"],"items":["Find","Replace","-","SelectAll","-","Scayt"] },{ "name":"tools","items":["Maximize","ShowBlocks"] },"/",{ "name":"insert","items":["Image","Flash","Table","HorizontalRule","SpecialChar","Iframe"] },{ "name":"paragraph","groups":["list","indent","blocks","align","bidi"],"items":["NumberedList","BulletedList","-","Outdent","Indent","-","Blockquote","CreateDiv","-","JustifyLeft","JustifyCenter","JustifyRight","JustifyBlock","-","BidiLtr","BidiRtl"] },{ "name":"links","items":["Link","Unlink","Anchor"] },{ "name":"basicstyles","groups":["basicstyles","cleanup"],"items":["Bold","Italic","Underline","Strike","Subscript","Superscript","-","RemoveFormat"] },{ "name":"styles","items":["Styles","Format","Font","FontSize"] },{ "name":"colors","items":["TextColor","BGColor"] }] }'>{$config->$localeId->icon3}</textarea>
                </div>
            </div>
            <div class="row">
                <div class="col-xs-12">
                    <label>
                        {_('Icon 4 Text')}
                    </label>
                    <textarea name="config[{$localeId}][icon4]" class="form-control" data-rte='{ "toolbar":[{ "name":"document","groups":["mode","document","doctools"],"items":["Source","-"] },{ "name":"clipboard","groups":["clipboard","undo"],"items":["Cut","Copy","Paste","PasteText","PasteFromWord","-","Undo","Redo"] },{ "name":"editing","groups":["find","selection","spellchecker"],"items":["Find","Replace","-","SelectAll","-","Scayt"] },{ "name":"tools","items":["Maximize","ShowBlocks"] },"/",{ "name":"insert","items":["Image","Flash","Table","HorizontalRule","SpecialChar","Iframe"] },{ "name":"paragraph","groups":["list","indent","blocks","align","bidi"],"items":["NumberedList","BulletedList","-","Outdent","Indent","-","Blockquote","CreateDiv","-","JustifyLeft","JustifyCenter","JustifyRight","JustifyBlock","-","BidiLtr","BidiRtl"] },{ "name":"links","items":["Link","Unlink","Anchor"] },{ "name":"basicstyles","groups":["basicstyles","cleanup"],"items":["Bold","Italic","Underline","Strike","Subscript","Superscript","-","RemoveFormat"] },{ "name":"styles","items":["Styles","Format","Font","FontSize"] },{ "name":"colors","items":["TextColor","BGColor"] }] }'>{$config->$localeId->icon4}</textarea>
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

<div id="tf-services" class="text-center">
    <div class="container">
        <div class="section-title center">
            <h2{if $inEditMode} data-inline-editor-field="headline"{/if}>{$config->$locale->headline}</h2>
            <div class="line">
                <hr>
            </div>
            <div class="clearfix"></div>
            <small><em><div{if $inEditMode} data-inline-editor-field="smallText"{/if}>{$config->$locale->smallText}</div></em></small>
        </div>
        <div class="space"></div>
        <div class="row">
            <div class="col-md-3 col-sm-6 service">
                <i class="fa fa-desktop"></i>
                <div{if $inEditMode} data-inline-editor-rte="true" data-inline-editor-field="icon1"{/if}>{{$config->$locale->icon1}}</div>
            </div>

            <div class="col-md-3 col-sm-6 service">
                <i class="fa fa-mobile"></i>
                <div{if $inEditMode} data-inline-editor-rte="true" data-inline-editor-field="icon2"{/if}>{{$config->$locale->icon2}}</div>
            </div>

            <div class="col-md-3 col-sm-6 service">
                <i class="fa fa-camera"></i>
                <div{if $inEditMode} data-inline-editor-rte="true" data-inline-editor-field="icon3"{/if}>{{$config->$locale->icon3}}</div>
            </div>

            <div class="col-md-3 col-sm-6 service">
                <i class="fa fa-bullhorn"></i>
                <div{if $inEditMode} data-inline-editor-rte="true" data-inline-editor-field="icon4"{/if}>{{$config->$locale->icon4}}</div>
            </div>
        </div>
    </div>
</div>