:colorscheme evening
:set t_Co=256
:set number
:set nowrap
:set autochdir
:set nohlsearch
:set go+=b
:set autoread
set backupdir=~/tmp
:cd /Users/bpickard/Desktop/
:set listchars=nbsp:¬,eol:¶,tab:>-,extends:»,precedes:«,trail:¿
set tabstop=4
set shiftwidth=4
set softtabstop=4

:let $TEMPLATE = "/Users/bpickard/Desktop/owncloud/Course\ Work/template.html"
:let $WORKINGDIR = "/Users/bpickard/Desktop/owncloud/Course\ Work/ECED425/2014W2/html"
    
let @a='"gdi<a href=""+pi€kr" target="_blank""€kb>"gpi€kr</a>'
let @b='"gdi<strong>?€kb"gpi€kr</strong>'
let @c='0wi<p class="caption">Creative Commons licensed image courtesy of <a href="€ü€€kr"></a></p>€ü€€kl€ü€€kr€kl€kl€kl€kl€kl€kl€kl€kl  €kb€kb'
let @d=':s/<a href="#_msocom.\{-\}<\/a>//gc'
let @e=':v/^\s<.*/s /\s\([A-Za-z].*\)/\t<p>\1<\/p>/c'
let @f='%s /<a href=\(.\{-}\)>/<a href=\1 target=\"_blank\">/gc'
let @h='0wi<div id="imgheading" class=""><P€kbp>$i€kri€kb</p></div>F"F'
let @i='"gdi<em>"gpi€kr</em>'
let @j='"gdO	<blockquote class="">	</blockquote>€ku		"g€kb€kb"gp>>€kudd€kuO€kdf"'
let @k='"gdO		<div clas=€kbs="idnet€kb€kb€kb€kbnset-riu€kbghjt€kb€kbt">		</div>P€kudd'
let @l='0wi<li>$i€kr</li>j0€kr'
let @m='i<img src="iamges/€kb€kb€kb€kb€kb€kbmages/" alt="$i" />0€kr€kd€kuji	€kr'
let @n='i<igrame €kb€kb€kb€kb€kb€kbframe width="480" height="€KF€KI€KC" src="httpd€kbs:// a"€kb€kb>€kb?rel-=€kb€kb=0" frameborder="0" allowfullscreen></iframe>q€kb'
let @o='"gdO	<ol>	</ol>€ku	"gp€kudd'
let @p='0wi<p>$i€kr</p>0j'
let @r='"gdi<span style="color:ref€kbd;">"gp$i€kr</span>0€kr€klw'
let @s='"gdi	<!-- **€ü SECTION€ü START€ü ******************************************************** -->	<!-- ((€ü €ü€kb€ü€kb€ü€kb**€ü SECTION€ü END€ü **********************************************************€ü -->€ku€ku	<div class="section" id="page#">€kd	</div>O		<footer>		<a href="#top">Back to Top €kb</a> | Page # of #	</footer>€ku€ku€kui€ku	"gp€kb€kb€kb"gp€kudd'
let @t='ggVG"gd:r /Users/bpickard/Desktop/owncloud/Course \€kb€kb\ Work/template.html:0:setf html'
let @u="oooo$mzoma'z$aa	</ul>'aO	<ul>"
let @w='0w"gywdwi<<€kb"gpi>€kD$€kb$i€kr</"gpi>0wj'
let @x='i<iframe id="theIframe" frameborder="0" widrg=€kb€kb€kbth="620" height="420" src="https://connect.ubc.ca/webapps/osv-kaltura-bb_bb60/jsp/viewContent1.jp€kbsp?entry_id=ENTRY_ID&amp;iframe€kb=€kbe=true"></igr€kb€kbframe>'
let @z='vit"gdddO"€kb"gp>>>>'



nnoremap <C-c> :!open -a Google\ Chrome '%'<CR><CR>

nnoremap <F1> :s/h[0-9]/h1/g <CR>
nnoremap <F2> :s/h[0-9]/h2/g <CR>
nnoremap <F3> :s/h[0-9]/h3/g <CR>
nnoremap <F4> :s/h[0-9]/h4/g <CR>
nnoremap <F5> :normal 0wih1 <esc>@w <CR>
nnoremap <F6> :normal 0wih2 <esc>@w <CR>
nnoremap <F7> :normal 0wih3 <esc>@w <CR>
nnoremap <F8> :normal 0wih4 <esc>@w <CR>
nnoremap <F9> :normal 0wicite <esc>@w <CR>
nnoremap <F10> :lcd %:p:h
nnoremap <F11> :0<CR>/<h2><CR> :normal vity <esc> :11<CR> :normal f>p<CR>:0<CR>/<h2><CR>:normal O<CR><esc>:normal "np<CR> 

nnoremap <C-d> :g/^$/d <CR>

command! FormatLinks :set wrap| :%s /<a href=\(.\{-}\)>/<a href=\1 target=\"_blank\">/gc|:set nowrap|
command! CleanMS :setf html | :execute "normal ggVG>"| :%s/<p>\|<\/p>//ge | :%s/&nbsp;//ge | :%s/^\t$//ge | :%s/\(<h[0-9].*\)/\r\t\1/ge | :%s/<ul>/\r\t<ul>/ge | :%s/<\/ul>/<\/ul>\r/ge | :%s/&lt;/<!--/ge | :%s/&gt;/-->/ge | :%s/<li>/\t<li>/ge | :%s/\(^.\{-\}\)\(<!--.\{-\}-->\)\(.*\)/\t\2\r\1\3/ge | :%s/^\t\([A-Za-z ].*\)/\t<p>\1<\/p>/ge | :%s/<ul>/<ul class="indent">/gce | :%s/<ul>/<ul class="references">/ge| :%s/<ol>/<ol class="indent">/ge| :g/^$/d  
command! AfterTidy :%s/\(<h[0-2].*\)/\r\t\t\1/ge | :%s/\(<div class=\"section\".*\)/\1\r/ge | :%s/\(<blockquote.*\)/\r\t\t\1/ge | :%s/\(<ul.*\)/\r\t\t\1/ge| :%s/\(<\/div>\)\(<!--.*\)/\1\r\t\2/ge | :%s/\(<cite.*\)/\r\t\t\t\1/ge|:%s/\(<footer.*\)/\r\t\t\1/ge | :%s/\(<p.\{-\}\)\(<!--.*\)/\1\r\t\2/ge | :g/^\s*<br>$/d
command! Tidy :!tidy -config ~/config.txt -m %:t
command! CleanOld :setf html | :execute "normal ggVG>" | :%s/<span.\{-\}>//ge | :%s/<\/span>//ge | :%s/<!--\[if.\{-\}<\!\[endif\]-->//ge | :%s/\ class="Mso.\{-\}\"//ge | :%s/style=\".\{-\}\"//ge | :%s/<table.\{-\}>//ge | :%s/<tr.\{-\}>//ge | :%s/<td.\{-\}>//ge | :%s/<div.\{-\}>//ge | :%s/<tbody.\{-\}>//ge | :%s/<th.\{-\}>//ge | :%s/<\/td>//ge | :%s/<\/tr>//ge | :%s/<\/th>//ge | :%s/<\/table>//ge | :%s/<\/div>//ge | :%s/<\/tbody>//ge | :%s/<br>//ge | :%s/&nbsp;//ge | :%s/\(<p>\|<\/p>\)//ge
command! RemoveCommentsAndWhitespace :%s/<!--.\{-\}-->//ge | :g/^\s*$/d
