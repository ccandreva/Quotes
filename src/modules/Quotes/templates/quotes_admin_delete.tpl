{*  $Id: quotes_admin_delete.tpl 358 2009-11-11 13:46:21Z herr.vorragend $  *}
{gt text='Delete Quote' assign='templatetitle'}

{include file='quotes_admin_menu.tpl'}

<div class="z-admincontainer">
    <div class="z-adminpageicon">{img modname='core' src='editdelete.gif' set='icons/large' alt=$templatetitle}</div>

    <h2>{$templatetitle}</h2>

    <p class="z-warningmsg">{gt text='Do you really want to delete this Quote?'}</p>

    <form class="z-form" action="{modurl modname='Quotes' type='admin' func='delete'}" method="post" enctype="application/x-www-form-urlencoded">
        <div>
            <input type="hidden" name="csrftoken" value="{insert name='csrftoken'}" />
            <input type="hidden" name="confirmation" value="1" />
            <input type="hidden" name="qid" value="{$qid|pnvarprepfordisplay}" />
            <div class="z-formbuttons">
                {button src='button_ok.gif' set='icons/small' __alt='Confirm deletion?' __title='Confirm deletion?'}
                <a href="{modurl modname='Quotes' type='admin' func='view'}">{img modname='core' src='button_cancel.gif' set='icons/small' __alt='Cancel' __title='Cancel'}</a>
            </div>
        </div>
    </form>
</div>