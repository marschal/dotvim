" ====================
"  Shortcut Übersicht
" ====================
"
" Pfeiltasten
" -----------
"  Rechts       -   nächster Buffer
"  Links        -   vorheriger Buffer
"  Oben         -   öffne / schließe Taglist
"  Unten        -   öffne / schließe NERDTree-Explorer
"
" Insert Mode
" -----------
"  Ctrl-a       -   Anfang der Zeile
"  Ctrl-e       -   Ende der Zeile
"  Ctrl-f       -   ein Zeichen vor
"  Ctrl-b       -   ein Zeichen zurück
"  Shift-Enter  -   ESC
"  Ctrl-Enter   -   ESC
"
" Normal Mode
" -----------
"  Space        -   Scrolle nach unten (halbe Seite)
"  Shift-Space  -   Scrolle nach oben (halbe Seite)
"  ,a           -   Wechseln zwichen aktivem und alternativem Buffer
"  ,b           -   Bufferübersicht (LustyJuggler / Ruby-Vim)
"  ,d           -   aktuellen Buffer schließen
"  ,h           -   Highlighting der Suchfunktion ausschalten
"  ,jr          -   kompiliert und führt die aktuelle Java-Datei aus
"  ,l           -   Zeilenangaben an/aus
"  ,m           -   maximiert das Fenster
"  ,n           -   Wiederherstellung des Standardfensters
"  ,q           -   öffnet das Quickfix-Fenster
"  ,qc          -   schließt das Quickfix-Fenster
"  ,s           -   Rechtschreibprüfung an / aus
"  ,t           -   überflüssige Leerzeichen an den Zeilenenden löschen
"  ,v           -   öffne die vimrc
"  ,w           -   schaltet den Umbruch von zu langen Zeilen an / aus
"  ,,w          -   EasyMotion Plugin
"  Q            -   Formatiert den Text neu
"  Ctrl-p       -   öffnet das PDF-Pendant zum aktiven Buffer
"  Ctrl-F10     -   erstellt eine Tag-Datenbank im aktuellen Verzeichnis
"  Ctrl-F11     -   macht das Fenster um 10 Spalten schmaler
"  Ctrl-F12     -   macht das Fenster um 10 Spalten breiter
"
" Mac OS X only
" -------------
"  Cmd-0..9     -   wähle den Tab Nr. 0..9 aus
"  Cmd-i        -   Check-In der Datei im aktiven Buffer (RCS)
"  Cmd-k        -   Verschiebe den ausgewählten Text nach oben
"  Cmd-j        -   Verschiebe den ausgewählten Text nach unten

" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

" ==========================
"  Allgemeine Einstellungen
" ==========================

" Pathogen setup
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()


" Nicht streng an vi orientiert
set nocompatible

" Automatische Datei-Erkennung
filetype indent plugin on

" Syntax-Highlight
syntax on

" Musthave! Standard Backspace ist der Tod. Meistens ohnehin so definiert,
" aber nur zur Sicherheit
set backspace=indent,eol,start

" Syntax-Highlighting für Doxygen-Kommentare
let g:load_doxygen_syntax=1

" Damit LaTeX-Suite auch neue Dateien erkennt, betrifft nur Vim7?!
let g:tex_flavor='latex'

" Das Errorformat soll zwischen Warnung und echtem Error unterscheiden
" können
let &errorformat="%f:%l:%c: %t%*[^:]:%m,%f:%l: %t%*[^:]:%m," . &errorformat

" Dateiformate
set fileformats=unix,dos,mac

" automatische, intelligente Einrückungen
set autoindent
set smartindent

" Datei wird automatisch neugeladen, wenn von außen geändert
set autoread

" Mauszeiger darf überall hin
set virtualedit=all

" Verzeichnis für .swp-Files
set directory=~/.vimtmp

" Lege Backups an
set backup
set backupdir=~/.vimbackup

" Setz den Pfad für :find / ** für Rekursion
if has("mac")
    set path+=~/Uni/**,~/LaTeX/**,~/Programmierung/Cpp/**,~/MaTA/**
endif

" Erlaubt Buffer-Wechsel, auch wenn nicht gespeichert
set hidden

" Kannst dir ruhig ein bisschen was merken :)
set history=1000

" Halt's Maul und blink net!
set visualbell t_vb=

" Immer die Statusleiste anzeigen / nicht nur bei Split-Window
set laststatus=2

" Zeigt in der Statuszeile folgendes an: Buffer-Nr, Dateiname,
" Bearbeitungsstatus (in Warnfarbe), Dateiformat + Codierung, aktelle Zeile
" und Spalte, Dezimal- und Hex-Wert des Zeichens unter dem Cursor
set statusline=%#StatusLine#\ \|%#Folded#\ %02n\ %#StatusLine#\|
            \\ \"%f\"\ %#ErrorMsg#%w%r%m%#StatusLine#%=
            \\ [%{&filetype}\|%{&fileformat}\|%{&fileencoding}]
            \\ \ [L:%3l/%L,\ C:%2v]\ \ [%3b\|0x%-2B]

" Ordnerpfade werden immer mit / getrennt, Backslash bei Windoof entfällt
set shellslash

" Standard-Textbreite von 75 Zeichen
set textwidth=75
" Der Text wird nur in Kommentaren automatisch umgebrochen
set formatoptions=crq

" Zeigt Position des Cursors an
set ruler

" Zeigt Modus am Ende des Fensters an
set showmode

" Zeigt das aktuelle Kommando unten rechts an
set showcmd

" aktiviert die Benutzung der Maus
set mouse=a
" Blendet den Mauszeiger beim tippen aus
set mousehide

" Ab 5 Zeilen vor Anfang/Ende des Fensters wird gescrollt
set scrolloff=5

" Zeichnet den Bildschirm beim ausführen eines Makros nicht ständig neu
set lazyredraw

" Standard Einrückung sei 4, keine echten Tabs benutzen!
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set shiftround
" Echte Tabs werden durch ▸ gekennzeichnet und angezeigt, Trailings werden
" durch • gekennzeichnet, damit sie entdeckt und entfernt werden können
set listchars=tab:▸\ ,trail:• ",eol:¬
set list

" Markiert Suchergebnisse
set hlsearch
" Interaktive Suche, schon während der Eingabe
set incsearch
" Keine Unterscheidung zwischen Groß und Kleinschreibung beim Suchen, aber
" trotzdem darauf reagieren, wenn Groß-Klein-Muster im Suchbegriff
" auftauchen
set ignorecase
set smartcase

" Zusammenfassen vom Klammern
set foldmethod=marker
" Wird nicht automatisch beim Laden der Datei zusammen gefasst
set nofoldenable
" Faltungen bei folgenden Aktionen öffnen:
set foldopen=block,insert,jump,mark,percent,quickfix,search,tag,undo

" Verbessert Auto-Vervollständigung, ignoriere bestimmte Datei-Arten
set wildmenu
set wildignore=*.o,*.class,*.toc,*.aux

" Zwei Zeilen für die Kommando-Eingabe
set cmdheight=2

" Entfernt die Zeichen bei der Fenster-Trennung
set fillchars=""

" Leerzeichen werden bei Diff ignoriert
set diffopt+=iwhite

" deutsche und englische Sprache für Rechtschreibprüfung
set spelllang=de,en

" Deutschen Wörterbuch aus Openoffice, Mathematisches Wörterbuch
"set dict+=~/.vimdict/de_De_frami.de.utf-8.add
"set dict+=~/.vimdict/de_dfew.de.utf-8.add

" Sagt der Autovervollständigung, dass diese auch im Wörterbuch suchen soll
set complete=.,w,b,u,t,i,k,kspell

" 7.3 Features
if version >= 703
    " ab Version 7.3 persistentes Undo:
    " XXX: könnte bei intensivem Gebrauch viel Speicherplatz brauchen. Kaum
    " bearbeitete Datei -> 33 kB Undo-History
    "set undofile
    "set undodir=~/.vimundo

    " Schaltet das Conceal-Feature für Version 7.3 ein
    set conceallevel=2

    " Conceal in LaTeX für accents, delimters, greek & math aktivieren
    let g:tex_conceal="adgm"
endif

" Definiere eigenen Mapleader
let mapleader = ","

" Einstellungen für Latexmk
"let g:LatexBox_viewer = 'skim'
"let g:LatexBox_latexmk_options = '-pvc'

" ==============================
"  Autocommands - Einstellungen
" ==============================

augroup VIMRC

    " entferne alle zuvor definierten Autocommands dieser Gruppe
    autocmd!

    " Wechselt automatisch ins Verzeichnis der geöffneten Datei
    autocmd BufEnter * :silent! lcd %:p:h

    " Rechschreibprüfung in LaTeX aktivieren
    autocmd BufRead,BufNewFile *.tex,*.txt setlocal spell

    " In LaTeX- / txt-Dateien wird sämtlicher Text umgebrochen / formatiert
    autocmd BufRead,BufNewFile *.tex,*.txt setlocal formatoptions+=t

    " In LaTeX-, PHP- und HTML-Dateien nur um 2 Stellen einrücken
    autocmd BufRead,BufNewFile *.tex,*.php,*.html setl tabstop=2 shiftwidth=2 softtabstop=2

    " keine Backups von Dateien aus meinem verschlüsselten Verzeichnis
    if has("mac")
        autocmd BufRead,BufNewFile /Volumes/NOT\ FOR\ YOU/** set nobackup
    else
        autocmd BufRead,BufNewFile /media/NOT\ FOR\ YOU/** set nobackup
    endif
    " XXX: Wird nur benötigt wenn Undofiles benutzt werden
    "autocmd BufRead,BufNewFile /Volumes/NOT\ FOR\ YOU/** setl noundofile

    " Alles was über 80 Zeichen in einer Zeile hinausgeht wird farbig markiert
    "autocmd BufNewFile,BufRead * match ErrorMsg /\%81v.*/
    "autocmd BufRead * highlight OverLength ctermbg=darkgrey guibg=#FFCCFF
    "autocmd BufRead * match OverLength /\%80v.*/

    " aktualisiere Tags für C++ Dateien nach Veränderungen des Headers
    autocmd BufWritePost *.h,*.hpp :silent! :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .

    " In dem Terminal Emulator müssen Leerzeichen nicht angezeigt werden
    autocmd FileType conque_term setl nolist

    " Bei dem Taglist-Fenster nicht die Standard-Statuszeile anzeigen
    autocmd FileType taglist setl statusline=Taglist

    " Lädt die vimrc nach dem Bearbeiten automatisch neu
    autocmd BufWritePost vimrc.vim,.vimrc source $MYVIMRC

    " Wenn es sich um eine Java-Datei handelt, nutze den Standard-Compiler
    " und benutze eine Einrückung von zwei Leerstellen
    autocmd Filetype java setl makeprg=javac\ %

    " Java Code-Vervollständigung mit javacomplete-PlugIn
    autocmd Filetype java setl omnifunc=javacomplete#Complete

    " Muss wiederholt werden, sobald ein GUI gestartet wird
    autocmd GuiEnter * set visualbell t_vb=

    " Wenn es sich bei der geöffneten Datei um ein Script handelt, mache es
    " nach dem Speichern ausführbar
    autocmd BufWritePost * if getline(1) =~ "^#!" | if getline(1) =~ "/bin/" | silent !chmod +x <afile> | endif | endif

    " Stelle den Compiler entsprechen für Dot-Graphen ein
    autocmd Filetype dot setl makeprg=dot\ -Tpdf\ %\ >%:t:r.pdf
    "autocmd Filetype dot setl makeprg=neato\ -Tpdf\ %\ >%:t:r.pdf
augroup END

" ========================
"  PlugIn - Einstellungen
" ========================

" Taglist Optionen
let Tlist_Ctags_Cmd = 'ctags'
let Tlist_Exist_OnlyWindow = 1
let Tlist_Enable_Fold_Column = 0
let Tlist_Use_Right_Window = 1
let Tlist_WinWidth = 30
" für PHP nicht alle möglichen Variablen auflisten
let tlist_php_settings = 'php;c:class;d:constant;f:function'

" Dateibrowser soll 30 Spalten breit sein
let NERDTreeWinSize = 30
" Lesezeichen immer anzeigen
let NERDTreeShowBookmarks=0

" cppcomplete soll kein Preview-Fenster zeigen
set completeopt=menuone
" ersten Treffer der Autovervollständigung auswählen, aber nicht
" ausschreiben
let OmniCpp_SelectFirstItem = 2
let OmniCpp_GlobalScopeSearch = 1
let OmniCpp_ShowPrototypeInAbbr = 1
let OmniCpp_ShowAccess = 1
" Datenbanken für die Systemfunktionen / C++ STL / QT-Lib
set tags+=~/.vimtags/commontags,~/.vimtags/stltags,~/.vimtags/qttags

" =====================
"  GUI - Einstellungen
" =====================
" mein Colorscheme, nur GUI
"colo marschal
colo solarized

" Ändert Hintergrundfarbe des Solorized Farbschemas
let g:solarized_degrade=1
set bg=dark


if has("gui_running")
    " Entfernt unnötigen GUI-Krams
    set guioptions=ace
    " Tableiste immer anzeigen
    set showtabline=2
    " Zeigt Zeilennummern an
    set number
    " Zeilennummern werden bis 99999 ohne Verzerrung des Layouts
    " dargestellt
    set numberwidth=6
    " Anzahl der Spalten
    set co=105
    " Die Spalten ab Zeile 80 werden farbig markiert (7.3- Feature)
    if version >= 703
        set colorcolumn=81
    endif
    " Anzahl der Zeilen (zu hohe Angabe maximiert das Fenster)
    set lines=999
    " Der Cursor muss im Normal-Mode nicht wie blöde blinken...
    set gcr=n:blinkon0
endif

" ===========
"  FUNCTIONS
" ===========

" Entfernt sämtliche Trailings aus der Datei
function! <SID>DeleteTrailings()
    let _s=@/
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    let @/=_s
    call cursor(l, c)
endfunction

" setzt automatisch geschweifte Klammern (wie in Eclipse)
function! <SID>PlaceCurlyBraces()
  s/\s*$/ {}
endfunction

" ==========
"  MAPPINGS
" ==========

" Textergänzung wie in Eclipse
inoremap <C-space> <C-p>

" Cursor soll zwischen den Klammern positioniert werden
inoremap () ()<Left>
inoremap [] []<Left>
inoremap {} {}<Left>
inoremap "" ""<Left>
inoremap '' ''<Left>

" geschweifte Klammer-Ergänzung wie in Eclipse
inoremap {<CR> {}<Left><CR><CR><Up><Tab>

" Im Insert-Mode Navigation in der Zeile wie in Emacs
inoremap <C-f> <Right>
inoremap <C-b> <Left>
inoremap <C-e> <End>
inoremap <C-a> <Home>

" Alternativen zu ESC
noremap <C-CR> <ESC>
noremap <S-CR> <ESC>
inoremap <C-CR> <ESC>
inoremap <S-CR> <ESC>

" Im Normal-Mode Scrollen mit Space
noremap <space> <C-d>
noremap <S-space> <C-u>

" Tabs lassen sich wie in Firefox ansprechen. OS X only
if has("mac")
    map <D-1> 1gt
    map <D-2> 2gt
    map <D-3> 3gt
    map <D-4> 4gt
    map <D-5> 5gt
    map <D-6> 6gt
    map <D-7> 7gt
    map <D-8> 8gt
    map <D-9> 9gt
    map <D-0> :tablast<CR>
endif

" gf soll immer die Datei unter dem Cursor öffnen, auch wenn diese noch
" nicht existiert
map <silent> gf :e <cfile><CR>

" schaltet Zeilenanzeige an / aus
noremap <silent> ,l :set number!<CR>

" Entfernt sämtliche Trailings mit Hilfe der zuvor definierten Funktion
noremap <silent> ,t :call <SID>DeleteTrailings()<CR>

" Schalte die hervorgehobene Suche aus
noremap <silent> ,h :noh<CR>

" Schaltet die Rechtschreibprüfung an und aus
noremap <silent> ,s :set spell! <CR>

" Öffnet die Bufferliste des LustyJuggler-PlugIns
noremap <silent> ,b :LustyJuggler<CR>

" Shortcut zum schnellen Bearbeiten der VIMRC
noremap <silent> ,v :e ~/.vimrc<CR>

" switched zwischen dem aktuellen und alternativen Buffer
noremap <silent> ,a :b#<CR>

" schließe den aktuellen Buffer
noremap <silent> ,d :bd<CR>

" schaltet den angezeigten Umbruch bei zu langen Zeilen an / aus
noremap <silent> ,w :set wrap!<CR>

" Check-In der Datei mit Command + i (OS X only)
if has("mac")
    map <silent> <D-i> :!ci -l % <CR>
endif

" Öffnet den PDF-Pendant zum aktuellen Buffer mit dem Standard-PDF-Viewer.
" Funktioniert in dieser Form nur unter OS X, für andere Betriebssysteme
" 'open' durch das entsprechende Programm ersetzen.
map <silent> <C-p> :!open %:t:r.pdf<CR>

" Zeigt den Filebrowser auf der linken Seite an (erfordert das NERDTree-Plugin)
map <silent> <down> :NERDTreeToggle<CR>

" Öffnet das Tag-List-Plugin
map <silent> <up> :TlistToggle<CR>

" Stellt das Standard-Fenster wieder her
map <silent> ,n :NERDTreeClose<CR>:TlistClose<CR>:set co=105<CR>:set lines=80<CR>

" Maximiert das Fenster
map <silent> ,m :set co=999<CR> :set lines=999<CR>

" kompiliere und führe die aktuelle Java Datei aus
map <silent> ,r :w<CR>:!javac % && java %:t:r<CR>

" c kompilieren und ausfuehren
map <silent> ,cr :w<CR>:!gcc -Wall -o %:t:r % && ./%:t:r<CR>

" zum nächsten Buffer
map <silent> <right> :bn<CR>

" zum vorherigen Buffer
map <silent> <left> :bp<CR>

" Textformatierung mit Q
map <silent> Q gq

" Y soll vom Cursor bis zum Ende der Zeile kopieren
noremap <silent> Y y$

" Vergrößerung / Verkleinerung des Fensters
noremap <silent> <C-F12> :set co+=10<CR>
noremap <silent> <C-F11> :set co-=10<CR>

" Erstellt CTags-Datenbank
map <silent> <C-F10> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>

" markierter Text lässt sich nach unten und oben verschieben. Benötigt das
" unimpared-Plugin
if has("mac")
    vmap <silent> <D-k> [egv
    vmap <silent> <D-j> ]egv
endif

" Shortcuts zum öffnen / Schließen des Qickfix-Menus
map <silent> ,q :copen<CR>
map <silent> ,qc :cclose<CR>

" Tippfehler und so
iab esle else
iab flase false
iab ture true
iab itme item

" :w und :W Speichern beide ab
cmap W w

" Semicolon wie in Eclipse, automatisch ans Ende der zeile setzen
inoremap ; <End>;

" Aligned nach Zeichen benötig das Tabularize plugin
nmap <Tab> :Tab /
vmap <Tab> :Tab /
"nmap <silent> <leader>l= :Tab /=<CR>
"vmap <silent> <leader>l= :Tab /=<CR>
"nmap <silent> <leader>l: :Tab /:<CR>
"vmap <silent> <leader>l: :Tab /:<CR>
"nmap <leader>l<CR> :Tab /
"vmap <leader>l<CR> :Tab /

" Setzt automatisch die passende KLammer, wie in Eclipse
inoremap <silent> {<CR> <Esc>:call <SID>PlaceCurlyBraces()<CR>$i<CR><CR><Up><Tab>

" Zentriert suchergebnise
noremap n nzz
noremap N Nzz
noremap * *zz
noremap # #zz
noremap g* g*zz
noremap g# g#zz

" Öffnet die Dateien (vorallem pdf aus LaTeX) in Skim
map <silent> <C-p> :!open -a skim %:t:r.pdf<CR>

" toggle for background for supported colorschemes
call togglebg#map("<F5>")
