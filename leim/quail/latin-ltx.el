;;; latin-ltx.el --- Quail package for TeX-style input -*-coding: utf-8;-*-

;; Copyright (C) 2001, 2002, 2003, 2004, 2005, 2006, 2007, 2008, 2009, 2010, 2011, 2012
;;   Free Software Foundation, Inc.
;; Copyright (C) 2001, 2002, 2003, 2004, 2005, 2006, 2007, 2008, 2009, 2010, 2011
;;   National Institute of Advanced Industrial Science and Technology (AIST)
;;   Registration Number H14PRO021

;; Author: TAKAHASHI Naoto <ntakahas@m17n.org>
;;         Dave Love <fx@gnu.org>
;; Keywords: multilingual, input, Greek, i18n

;; This file is part of GNU Emacs.

;; GNU Emacs is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; GNU Emacs is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;;; Code:

(require 'quail)

(quail-define-package
 "TeX" "UTF-8" "\\" t
 "LaTeX-like input method for many characters.
These characters are from the charsets used by the `utf-8' coding
system, including many technical ones.  Examples:
 \\'a -> á  \\`{a} -> à
 \\pi -> π  \\int -> ∫  ^1 -> ¹"

 '(("\t" . quail-completion))
 t t nil nil nil nil nil nil nil t)

(quail-define-rules
 ("!`" ?¡)
 ("\\pounds" ?£) ;; ("{\\pounds}" ?£)
 ("\\S" ?§) ;; ("{\\S}" ?§)
 ("\\\"{}" ?¨)
 ("\\copyright" ?©) ;; ("{\\copyright}" ?©)
 ("$^a$" ?ª)
 ("\\={}" ?¯)
 ("$\\pm$" ?±) ("\\pm" ?±)
 ("$^2$" ?²)
 ("$^3$" ?³)
 ("\\'{}" ?´)
 ("\\P" ?¶) ;; ("{\\P}" ?¶)
 ;; Fixme: Yudit has the equivalent of ("\\cdot" ?⋅), for U+22C5, DOT
 ;; OPERATOR, whereas · is MIDDLE DOT.  JadeTeX translates both to
 ;; \cdot.
 ("$\\cdot$" ?·) ("\\cdot" ?·)
 ("\\c{}" ?¸)
 ("$^1$" ?¹)
 ("$^o$" ?º)
 ("?`" ?¿)

 ("\\`{A}" ?À)  ("\\`A" ?À)
 ("\\'{A}" ?Á)  ("\\'A" ?Á)
 ("\\^{A}" ?Â)  ("\\^A" ?Â)
 ("\\~{A}" ?Ã)  ("\\~A" ?Ã)
 ("\\\"{A}" ?Ä)  ("\\\"A" ?Ä)
 ("\\\k{A}" ?Ą)
 ("\\AA" ?Å) ;; ("{\\AA}" ?Å)
 ("\\AE" ?Æ) ;; ("{\\AE}" ?Æ)
 ("\\c{C}" ?Ç)  ("\\cC" ?Ç)
 ("\\`{E}" ?È)  ("\\`E" ?È)
 ("\\'{E}" ?É)  ("\\'E" ?É)
 ("\\^{E}" ?Ê)  ("\\^E" ?Ê)
 ("\\\"{E}" ?Ë)  ("\\\"E" ?Ë)
 ("\\\k{E}" ?Ę)
 ("\\`{I}" ?Ì)  ("\\`I" ?Ì)
 ("\\'{I}" ?Í)  ("\\'I" ?Í)
 ("\\^{I}" ?Î)  ("\\^I" ?Î)
 ("\\\"{I}" ?Ï)  ("\\\"I" ?Ï)
 ("\\\k{I}" ?Į)

 ("\\~{N}" ?Ñ)  ("\\~N" ?Ñ)
 ("\\`{O}" ?Ò)  ("\\`O" ?Ò)
 ("\\'{O}" ?Ó)  ("\\'O" ?Ó)
 ("\\^{O}" ?Ô)  ("\\^O" ?Ô)
 ("\\~{O}" ?Õ)  ("\\~O" ?Õ)
 ("\\\"{O}" ?Ö)  ("\\\"O" ?Ö)
 ("\\\k{O}" ?Ǫ)
 ("$\\times$" ?×) ("\\times" ?×)
 ("\\O" ?Ø) ;; ("{\\O}" ?Ø)
 ("\\`{U}" ?Ù) ("\\`U" ?Ù)
 ("\\'{U}" ?Ú) ("\\'U" ?Ú)
 ("\\^{U}" ?Û) ("\\^U" ?Û)
 ("\\\"{U}" ?Ü) ("\\\"U" ?Ü)
 ("\\\k{U}" ?Ų)
 ("\\'{Y}" ?Ý) ("\\'Y" ?Ý)
 ("\\ss" ?ß) ;; ("{\\ss}" ?ß)

 ("\\`{a}" ?à) ("\\`a" ?à)
 ("\\'{a}" ?á) ("\\'a" ?á)
 ("\\^{a}" ?â) ("\\^a" ?â)
 ("\\~{a}" ?ã) ("\\~a" ?ã)
 ("\\\"{a}" ?ä) ("\\\"a" ?ä)
 ("\\\k{a}" ?ą)
 ("\\aa" ?å) ;; ("{\\aa}" ?å)
 ("\\ae" ?æ) ;; ("{\\ae}" ?æ)
 ("\\c{c}" ?ç) ("\\cc" ?ç)
 ("\\`{e}" ?è) ("\\`e" ?è)
 ("\\'{e}" ?é) ("\\'e" ?é)
 ("\\^{e}" ?ê) ("\\^e" ?ê)
 ("\\\"{e}" ?ë) ("\\\"e" ?ë)
 ("\\\k{e}" ?ę)
 ("\\`{\\i}" ?ì)  ("\\`i" ?ì)
 ("\\'{\\i}" ?í)  ("\\'i" ?í)
 ("\\^{\\i}" ?î) ("\\^i" ?î)
 ("\\\"{\\i}" ?ï) ("\\\"i" ?ï)
 ("\\\k{i}" ?į)

 ("\\~{n}" ?ñ) ("\\~n" ?ñ)
 ("\\`{o}" ?ò) ("\\`o" ?ò)
 ("\\'{o}" ?ó) ("\\'o" ?ó)
 ("\\^{o}" ?ô) ("\\^o" ?ô)
 ("\\~{o}" ?õ) ("\\~o" ?õ)
 ("\\\"{o}" ?ö) ("\\\"o" ?ö)
 ("\\\k{o}" ?ǫ)
 ("$\\div$" ?÷) ("\\div" ?÷)
 ("\\o" ?ø) ;; ("{\\o}" ?ø)
 ("\\`{u}" ?ù) ("\\`u" ?ù)
 ("\\'{u}" ?ú) ("\\'u" ?ú)
 ("\\^{u}" ?û) ("\\^u" ?û)
 ("\\\"{u}" ?ü) ("\\\"u" ?ü)
 ("\\\k{u}" ?ų)
 ("\\'{y}" ?ý) ("\\'y" ?ý)
 ("\\\"{y}" ?ÿ) ("\\\"y" ?ÿ)

 ("\\={A}" ?Ā) ("\\=A" ?Ā)
 ("\\={a}" ?ā) ("\\=a" ?ā)
 ("\\u{A}" ?Ă) ("\\uA" ?Ă)
 ("\\u{a}" ?ă) ("\\ua" ?ă)
 ("\\'{C}" ?Ć) ("\\'C" ?Ć)
 ("\\'{c}" ?ć) ("\\'c" ?ć)
 ("\\^{C}" ?Ĉ) ("\\^C" ?Ĉ)
 ("\\^{c}" ?ĉ) ("\\^c" ?ĉ)
 ("\\.{C}" ?Ċ) ("\\.C" ?Ċ)
 ("\\.{c}" ?ċ) ("\\.c" ?ċ)
 ("\\v{C}" ?Č) ("\\vC" ?Č)
 ("\\v{c}" ?č) ("\\vc" ?č)
 ("\\v{D}" ?Ď) ("\\vD" ?Ď)
 ("\\v{d}" ?ď) ("\\vd" ?ď)

 ("\\={E}" ?Ē) ("\\=E" ?Ē)
 ("\\={e}" ?ē) ("\\=e" ?ē)
 ("\\u{E}" ?Ĕ) ("\\uE" ?Ĕ)
 ("\\u{e}" ?ĕ) ("\\ue" ?ĕ)
 ("\\.{E}" ?Ė) ("\\.E" ?Ė)
 ("\\e{e}" ?ė) ("\\ee" ?ė)
 ("\\v{E}" ?Ě) ("\\vE" ?Ě)
 ("\\v{e}" ?ě) ("\\ve" ?ě)
 ("\\^{G}" ?Ĝ) ("\\^G" ?Ĝ)
 ("\\^{g}" ?ĝ) ("\\^g" ?ĝ)
 ("\\u{G}" ?Ğ) ("\\uG" ?Ğ)
 ("\\u{g}" ?ğ) ("\\ug" ?ğ)

 ("\\.{G}" ?Ġ) ("\\.G" ?Ġ)
 ("\\.{g}" ?ġ) ("\\.g" ?ġ)
 ("\\c{G}" ?Ģ) ("\\cG" ?Ģ)
 ("\\c{g}" ?ģ) ("\\cg" ?ģ)
 ("\\^{H}" ?Ĥ) ("\\^H" ?Ĥ)
 ("\\^{h}" ?ĥ) ("\\^h" ?ĥ)
 ("\\~{I}" ?Ĩ) ("\\~I" ?Ĩ)
 ("\\~{\\i}" ?ĩ) ("\\~i" ?ĩ)
 ("\\={I}" ?Ī) ("\\=I" ?Ī)
 ("\\={\\i}" ?ī) ("\\=i" ?ī)
 ("\\u{I}" ?Ĭ) ("\\uI" ?Ĭ)
 ("\\u{\\i}" ?ĭ) ("\\ui" ?ĭ)

 ("\\.{I}" ?İ) ("\\.I" ?İ)
 ("\\i" ?ı) ;; ("{\\i}" ?ı)
 ("\\^{J}" ?Ĵ) ("\\^J" ?Ĵ)
 ("\\^{\\j}" ?ĵ) ("\\^j" ?ĵ)
 ("\\c{K}" ?Ķ) ("\\cK" ?Ķ)
 ("\\c{k}" ?ķ) ("\\ck" ?ķ)
 ("\\'{L}" ?Ĺ) ("\\'L" ?Ĺ)
 ("\\'{l}" ?ĺ) ("\\'l" ?ĺ)
 ("\\c{L}" ?Ļ) ("\\cL" ?Ļ)
 ("\\c{l}" ?ļ) ("\\cl" ?ļ)

 ("\\L" ?Ł) ;; ("{\\L}" ?Ł)
 ("\\l" ?ł) ;; ("{\\l}" ?ł)
 ("\\'{N}" ?Ń) ("\\'N" ?Ń)
 ("\\'{n}" ?ń) ("\\'n" ?ń)
 ("\\c{N}" ?Ņ) ("\\cN" ?Ņ)
 ("\\c{n}" ?ņ) ("\\cn" ?ņ)
 ("\\v{N}" ?Ň) ("\\vN" ?Ň)
 ("\\v{n}" ?ň) ("\\vn" ?ň)
 ("\\={O}" ?Ō) ("\\=O" ?Ō)
 ("\\={o}" ?ō) ("\\=o" ?ō)
 ("\\u{O}" ?Ŏ) ("\\uO" ?Ŏ)
 ("\\u{o}" ?ŏ) ("\\uo" ?ŏ)

 ("\\H{O}" ?Ő) ("\\HO" ?Ő)
 ("\\U{o}" ?ő) ("\\Uo" ?ő)
 ("\\OE" ?Œ) ;; ("{\\OE}" ?Œ)
 ("\\oe" ?œ) ;; ("{\\oe}" ?œ)
 ("\\'{R}" ?Ŕ) ("\\'R" ?Ŕ)
 ("\\'{r}" ?ŕ) ("\\'r" ?ŕ)
 ("\\c{R}" ?Ŗ) ("\\cR" ?Ŗ)
 ("\\c{r}" ?ŗ) ("\\cr" ?ŗ)
 ("\\v{R}" ?Ř) ("\\vR" ?Ř)
 ("\\v{r}" ?ř) ("\\vr" ?ř)
 ("\\'{S}" ?Ś) ("\\'S" ?Ś)
 ("\\'{s}" ?ś) ("\\'s" ?ś)
 ("\\^{S}" ?Ŝ) ("\\^S" ?Ŝ)
 ("\\^{s}" ?ŝ) ("\\^s" ?ŝ)
 ("\\c{S}" ?Ş) ("\\cS" ?Ş)
 ("\\c{s}" ?ş) ("\\cs" ?ş)

 ("\\v{S}" ?Š) ("\\vS" ?Š)
 ("\\v{s}" ?š) ("\\vs" ?š)
 ("\\c{T}" ?Ţ) ("\\cT" ?Ţ)
 ("\\c{t}" ?ţ) ("\\ct" ?ţ)
 ("\\v{T}" ?Ť) ("\\vT" ?Ť)
 ("\\v{t}" ?ť) ("\\vt" ?ť)
 ("\\~{U}" ?Ũ) ("\\~U" ?Ũ)
 ("\\~{u}" ?ũ) ("\\~u" ?ũ)
 ("\\={U}" ?Ū) ("\\=U" ?Ū)
 ("\\={u}" ?ū) ("\\=u" ?ū)
 ("\\u{U}" ?Ŭ) ("\\uU" ?Ŭ)
 ("\\u{u}" ?ŭ) ("\\uu" ?ŭ)

 ("\\H{U}" ?Ű) ("\\HU" ?Ű)
 ("\\H{u}" ?ű) ("\\Hu" ?ű)
 ("\\^{W}" ?Ŵ) ("\\^W" ?Ŵ)
 ("\\^{w}" ?ŵ) ("\\^w" ?ŵ)
 ("\\^{Y}" ?Ŷ) ("\\^Y" ?Ŷ)
 ("\\^{y}" ?ŷ) ("\\^y" ?ŷ)
 ("\\\"{Y}" ?Ÿ) ("\\\"Y" ?Ÿ)
 ("\\'{Z}" ?Ź) ("\\'Z" ?Ź)
 ("\\'{z}" ?ź) ("\\'z" ?ź)
 ("\\.{Z}" ?Ż) ("\\.Z" ?Ż)
 ("\\.{z}" ?ż) ("\\.z" ?ż)
 ("\\v{Z}" ?Ž) ("\\vZ" ?Ž)
 ("\\v{z}" ?ž) ("\\vz" ?ž)

 ("\\v{A}" ?Ǎ) ("\\vA" ?Ǎ)
 ("\\v{a}" ?ǎ) ("\\va" ?ǎ)
 ("\\v{I}" ?Ǐ) ("\\vI" ?Ǐ)
 ("\\v{\\i}" ?ǐ) ("\\vi" ?ǐ)
 ("\\v{O}" ?Ǒ) ("\\vO" ?Ǒ)
 ("\\v{o}" ?ǒ) ("\\vo" ?ǒ)
 ("\\v{U}" ?Ǔ) ("\\vU" ?Ǔ)
 ("\\v{u}" ?ǔ) ("\\vu" ?ǔ)

 ("\\={\\AE}" ?Ǣ) ("\\=\\AE" ?Ǣ)
 ("\\={\\ae}" ?ǣ) ("\\=\\ae" ?ǣ)
 ("\\v{G}" ?Ǧ) ("\\vG" ?Ǧ)
 ("\\v{g}" ?ǧ) ("\\vg" ?ǧ)
 ("\\v{K}" ?Ǩ) ("\\vK" ?Ǩ)
 ("\\v{k}" ?ǩ) ("\\vk" ?ǩ)

 ("\\v{\\j}" ?ǰ) ("\\vj" ?ǰ)
 ("\\'{G}" ?Ǵ) ("\\'G" ?Ǵ)
 ("\\'{g}" ?ǵ) ("\\'g" ?ǵ)
 ("\\`{N}" ?Ǹ) ("\\`N" ?Ǹ)
 ("\\`{n}" ?ǹ) ("\\`n" ?ǹ)
 ("\\'{\\AE}" ?Ǽ) ("\\'\\AE" ?Ǽ)
 ("\\'{\\ae}" ?ǽ) ("\\'\\ae" ?ǽ)
 ("\\'{\\O}" ?Ǿ) ("\\'\\O" ?Ǿ)
 ("\\'{\\o}" ?ǿ) ("\\'\\o" ?ǿ)

 ("\\v{H}" ?Ȟ) ("\\vH" ?Ȟ)
 ("\\v{h}" ?ȟ) ("\\vh" ?ȟ)
 ("\\.{A}" ?Ȧ) ("\\.A" ?Ȧ)
 ("\\.{a}" ?ȧ) ("\\.a" ?ȧ)
 ("\\c{E}" ?Ȩ) ("\\cE" ?Ȩ)
 ("\\c{e}" ?ȩ) ("\\ce" ?ȩ)
 ("\\.{O}" ?Ȯ) ("\\.O" ?Ȯ)
 ("\\.{o}" ?ȯ) ("\\.o" ?ȯ)
 ("\\={Y}" ?Ȳ) ("\\=Y" ?Ȳ)
 ("\\={y}" ?ȳ) ("\\=y" ?ȳ)

 ("\\v{}" ?ˇ)
 ("\\u{}" ?˘)
 ("\\.{}" ?˙)
 ("\\~{}" ?˜)
 ("\\H{}" ?˝)

 ("\\'" ?́)
 ("\\'K" ?Ḱ)
 ("\\'M" ?Ḿ)
 ("\\'P" ?Ṕ)
 ("\\'W" ?Ẃ)
 ("\\'k" ?ḱ)
 ("\\'m" ?ḿ)
 ("\\'p" ?ṕ)
 ("\\'w" ?ẃ)
 ("\\," ? )
 ("\\." ?̇)
 ("\\.B" ?Ḃ)
 ("\\.D" ?Ḋ)
 ("\\.F" ?Ḟ)
 ("\\.H" ?Ḣ)
 ("\\.M" ?Ṁ)
 ("\\.N" ?Ṅ)
 ("\\.P" ?Ṗ)
 ("\\.R" ?Ṙ)
 ("\\.S" ?Ṡ)
 ("\\.T" ?Ṫ)
 ("\\.W" ?Ẇ)
 ("\\.X" ?Ẋ)
 ("\\.Y" ?Ẏ)
 ("\\.b" ?ḃ)
 ("\\.d" ?ḋ)
 ("\\.e" ?ė)
 ("\\.f" ?ḟ)
 ("\\.h" ?ḣ)
 ("\\.m" ?ṁ)
 ("\\.n" ?ṅ)
 ("\\.p" ?ṗ)
 ("\\.r" ?ṙ)
 ("\\.s" ?ṡ)
 ("\\.t" ?ṫ)
 ("\\.w" ?ẇ)
 ("\\.x" ?ẋ)
 ("\\.y" ?ẏ)
 ("\\/" ?‌)
 ("\\:" ? )
 ("\\;" ? )
 ("\\=" ?̄)
 ("\\=G" ?Ḡ)
 ("\\=g" ?ḡ)

 ("^(" ?⁽)
 ("^)" ?⁾)
 ("^+" ?⁺)
 ("^-" ?⁻)
 ("^0" ?⁰)
 ("^1" ?¹)
 ("^2" ?²)
 ("^3" ?³)
 ("^4" ?⁴)
 ("^5" ?⁵)
 ("^6" ?⁶)
 ("^7" ?⁷)
 ("^8" ?⁸)
 ("^9" ?⁹)
 ("^=" ?⁼)
 ("^\\gamma" ?ˠ)
 ("^h" ?ʰ)
 ("^j" ?ʲ)
 ("^l" ?ˡ)
 ("^n" ?ⁿ)
 ("^o" ?º)
 ("^r" ?ʳ)
 ("^s" ?ˢ)
 ("^w" ?ʷ)
 ("^x" ?ˣ)
 ("^y" ?ʸ)
 ("^{SM}" ?℠)
 ("^{TEL}" ?℡)
 ("^{TM}" ?™)
 ("_(" ?₍)
 ("_)" ?₎)
 ("_+" ?₊)
 ("_-" ?₋)
 ("_0" ?₀)
 ("_1" ?₁)
 ("_2" ?₂)
 ("_3" ?₃)
 ("_4" ?₄)
 ("_5" ?₅)
 ("_6" ?₆)
 ("_7" ?₇)
 ("_8" ?₈)
 ("_9" ?₉)
 ("_=" ?₌)

 ("\\~" ?̃)
 ("\\~E" ?Ẽ)
 ("\\~V" ?Ṽ)
 ("\\~Y" ?Ỹ)
 ("\\~e" ?ẽ)
 ("\\~v" ?ṽ)
 ("\\~y" ?ỹ)

 ("\\\"" ?̈)
 ("\\\"H" ?Ḧ)
 ("\\\"W" ?Ẅ)
 ("\\\"X" ?Ẍ)
 ("\\\"h" ?ḧ)
 ("\\\"t" ?ẗ)
 ("\\\"w" ?ẅ)
 ("\\\"x" ?ẍ)
 ("\\^" ?̂)
 ("\\^Z" ?Ẑ)
 ("\\^z" ?ẑ)
 ("\\`" ?̀)
 ("\\`W" ?Ẁ)
 ("\\`Y" ?Ỳ)
 ("\\`w" ?ẁ)
 ("\\`y" ?ỳ)
 ("\\b" ?̱)
 ("\\c" ?̧)
 ("\\c{D}" ?Ḑ)
 ("\\c{H}" ?Ḩ)
 ("\\c{d}" ?ḑ)
 ("\\c{h}" ?ḩ)
 ("\\d" ?̣)
 ("\\d{A}" ?Ạ)
 ("\\d{B}" ?Ḅ)
 ("\\d{D}" ?Ḍ)
 ("\\d{E}" ?Ẹ)
 ("\\d{H}" ?Ḥ)
 ("\\d{I}" ?Ị)
 ("\\d{K}" ?Ḳ)
 ("\\d{L}" ?Ḷ)
 ("\\d{M}" ?Ṃ)
 ("\\d{N}" ?Ṇ)
 ("\\d{O}" ?Ọ)
 ("\\d{R}" ?Ṛ)
 ("\\d{S}" ?Ṣ)
 ("\\d{T}" ?Ṭ)
 ("\\d{U}" ?Ụ)
 ("\\d{V}" ?Ṿ)
 ("\\d{W}" ?Ẉ)
 ("\\d{Y}" ?Ỵ)
 ("\\d{Z}" ?Ẓ)
 ("\\d{a}" ?ạ)
 ("\\d{b}" ?ḅ)
 ("\\d{d}" ?ḍ)
 ("\\d{e}" ?ẹ)
 ("\\d{h}" ?ḥ)
 ("\\d{i}" ?ị)
 ("\\d{k}" ?ḳ)
 ("\\d{l}" ?ḷ)
 ("\\d{m}" ?ṃ)
 ("\\d{n}" ?ṇ)
 ("\\d{o}" ?ọ)
 ("\\d{r}" ?ṛ)
 ("\\d{s}" ?ṣ)
 ("\\d{t}" ?ṭ)
 ("\\d{u}" ?ụ)
 ("\\d{v}" ?ṿ)
 ("\\d{w}" ?ẉ)
 ("\\d{y}" ?ỵ)
 ("\\d{z}" ?ẓ)
 ("\\rq" ?’)
 ("\\u" ?̆)
 ("\\v" ?̌)
 ("\\v{L}" ?Ľ)
 ("\\v{i}" ?ǐ)
 ("\\v{j}" ?ǰ)
 ("\\v{l}" ?ľ)
 ("\\yen" ?¥)

 ("\\Box" ?□)
 ("\\Bumpeq" ?≎)
 ("\\Cap" ?⋒)
 ("\\Cup" ?⋓)
 ("\\Delta" ?Δ)
 ("\\Diamond" ?◇)
 ("\\Downarrow" ?⇓)
 ("\\Gamma" ?Γ)
 ("\\H" ?̋)
 ("\\H{o}" ?ő)
 ("\\Im" ?ℑ)
 ("\\Join" ?⋈)
 ("\\Lambda" ?Λ)
 ("\\Leftarrow" ?⇐)
 ("\\Leftrightarrow" ?⇔)
 ("\\Ll" ?⋘)
 ("\\Lleftarrow" ?⇚)
 ("\\Longleftarrow" ?⇐)
 ("\\Longleftrightarrow" ?⇔)
 ("\\Longrightarrow" ?⇒)
 ("\\Lsh" ?↰)
 ("\\Omega" ?Ω)
 ("\\Phi" ?Φ)
 ("\\Pi" ?Π)
 ("\\Psi" ?Ψ)
 ("\\Re" ?ℜ)
 ("\\Rightarrow" ?⇒)
 ("\\Rrightarrow" ?⇛)
 ("\\Rsh" ?↱)
 ("\\Sigma" ?Σ)
 ("\\Subset" ?⋐)
 ("\\Supset" ?⋑)
 ("\\Theta" ?Θ)
 ("\\Uparrow" ?⇑)
 ("\\Updownarrow" ?⇕)
 ("\\Upsilon" ?Υ)
 ("\\Vdash" ?⊩)
 ("\\Vert" ?‖)
 ("\\Vvdash" ?⊪)
 ("\\Xi" ?Ξ)
 ("\\aleph" ?ℵ)
 ("\\alpha" ?α)
 ("\\amalg" ?∐)
 ("\\angle" ?∠)
 ("\\approx" ?≈)
 ("\\approxeq" ?≊)
 ("\\ast" ?∗)
 ("\\asymp" ?≍)
 ("\\backcong" ?≌)
 ("\\backepsilon" ?∍)
 ("\\backprime" ?‵)
 ("\\backsim" ?∽)
 ("\\backsimeq" ?⋍)
 ("\\backslash" ?\\)
 ("\\barwedge" ?⊼)
 ("\\because" ?∵)
 ("\\beta" ?β)
 ("\\beth" ?ℶ)
 ("\\between" ?≬)
 ("\\bigcap" ?⋂)
 ("\\bigcirc" ?◯)
 ("\\bigcup" ?⋃)
 ("\\bigstar" ?★)
 ("\\bigtriangledown" ?▽)
 ("\\bigtriangleup" ?△)
 ("\\bigvee" ?⋁)
 ("\\bigwedge" ?⋀)
 ("\\blacklozenge" ?✦)
 ("\\blacksquare" ?▪)
 ("\\blacktriangle" ?▴)
 ("\\blacktriangledown" ?▾)
 ("\\blacktriangleleft" ?◂)
 ("\\blacktriangleright" ?▸)
 ("\\bot" ?⊥)
 ("\\bowtie" ?⋈)
 ("\\boxminus" ?⊟)
 ("\\boxplus" ?⊞)
 ("\\boxtimes" ?⊠)
 ("\\bullet" ?•)
 ("\\bumpeq" ?≏)
 ("\\cap" ?∩)
 ("\\cdots" ?⋯)
 ("\\centerdot" ?·)
 ("\\checkmark" ?✓)
 ("\\chi" ?χ)
 ("\\circ" ?∘)
 ("\\circeq" ?≗)
 ("\\circlearrowleft" ?↺)
 ("\\circlearrowright" ?↻)
 ("\\circledR" ?®)
 ("\\circledS" ?Ⓢ)
 ("\\circledast" ?⊛)
 ("\\circledcirc" ?⊚)
 ("\\circleddash" ?⊝)
 ("\\clubsuit" ?♣)
 ("\\colon" ?:)
 ("\\coloneq" ?≔)
 ("\\complement" ?∁)
 ("\\cong" ?≅)
 ("\\coprod" ?∐)
 ("\\cup" ?∪)
 ("\\curlyeqprec" ?⋞)
 ("\\curlyeqsucc" ?⋟)
 ("\\curlypreceq" ?≼)
 ("\\curlyvee" ?⋎)
 ("\\curlywedge" ?⋏)
 ("\\curvearrowleft" ?↶)
 ("\\curvearrowright" ?↷)

 ("\\dag" ?†)
 ("\\dagger" ?†)
 ("\\daleth" ?ℸ)
 ("\\dashv" ?⊣)
 ("\\ddag" ?‡)
 ("\\ddagger" ?‡)
 ("\\ddots" ?⋱)
 ("\\delta" ?δ)
 ("\\diamond" ?⋄)
 ("\\diamondsuit" ?♢)
 ("\\digamma" ?Ϝ)
 ("\\divideontimes" ?⋇)
 ("\\doteq" ?≐)
 ("\\doteqdot" ?≑)
 ("\\dotplus" ?∔)
 ("\\dotsquare" ?⊡)
 ("\\downarrow" ?↓)
 ("\\downdownarrows" ?⇊)
 ("\\downleftharpoon" ?⇃)
 ("\\downrightharpoon" ?⇂)
 ("\\ell" ?ℓ)
 ("\\emptyset" ?∅)
 ("\\epsilon" ?ε)
 ("\\eqcirc" ?≖)
 ("\\eqcolon" ?≕)
 ("\\eqslantgtr" ?⋝)
 ("\\eqslantless" ?⋜)
 ("\\equiv" ?≡)
 ("\\eta" ?η)
 ("\\euro" ?€)
 ("\\exists" ?∃)
 ("\\fallingdotseq" ?≒)
 ("\\flat" ?♭)
 ("\\forall" ?∀)
 ("\\frac1" ?⅟)
 ("\\frac12" ?½)
 ("\\frac13" ?⅓)
 ("\\frac14" ?¼)
 ("\\frac15" ?⅕)
 ("\\frac16" ?⅙)
 ("\\frac18" ?⅛)
 ("\\frac23" ?⅔)
 ("\\frac25" ?⅖)
 ("\\frac34" ?¾)
 ("\\frac35" ?⅗)
 ("\\frac38" ?⅜)
 ("\\frac45" ?⅘)
 ("\\frac56" ?⅚)
 ("\\frac58" ?⅝)
 ("\\frac78" ?⅞)
 ("\\frown" ?⌢)
 ("\\gamma" ?γ)
 ("\\ge" ?≥)
 ("\\geq" ?≥)
 ("\\geqq" ?≧)
 ("\\geqslant" ?≥)
 ("\\gets" ?←)
 ("\\gg" ?≫)
 ("\\ggg" ?⋙)
 ("\\gimel" ?ℷ)
 ("\\gnapprox" ?⋧)
 ("\\gneq" ?≩)
 ("\\gneqq" ?≩)
 ("\\gnsim" ?⋧)
 ("\\gtrapprox" ?≳)
 ("\\gtrdot" ?⋗)
 ("\\gtreqless" ?⋛)
 ("\\gtreqqless" ?⋛)
 ("\\gtrless" ?≷)
 ("\\gtrsim" ?≳)
 ("\\gvertneqq" ?≩)
 ("\\hbar" ?ℏ)
 ("\\heartsuit" ?♥)
 ("\\hookleftarrow" ?↩)
 ("\\hookrightarrow" ?↪)
 ("\\iff" ?⇔)
 ("\\imath" ?ı)
 ("\\in" ?∈)
 ("\\infty" ?∞)
 ("\\int" ?∫)
 ("\\intercal" ?⊺)
 ("\\iota" ?ι)
 ("\\kappa" ?κ)
 ("\\lambda" ?λ)
 ("\\langle" ?〈)
 ("\\lbrace" ?{)
 ("\\lbrack" ?\[)
 ("\\lceil" ?⌈)
 ("\\ldots" ?…)
 ("\\le" ?≤)
 ("\\leadsto" ?↝)
 ("\\leftarrow" ?←)
 ("\\leftarrowtail" ?↢)
 ("\\leftharpoondown" ?↽)
 ("\\leftharpoonup" ?↼)
 ("\\leftleftarrows" ?⇇)
 ("\\leftparengtr" ?〈)
 ("\\leftrightarrow" ?↔)
 ("\\leftrightarrows" ?⇆)
 ("\\leftrightharpoons" ?⇋)
 ("\\leftrightsquigarrow" ?↭)
 ("\\leftthreetimes" ?⋋)
 ("\\leq" ?≤)
 ("\\leqq" ?≦)
 ("\\leqslant" ?≤)
 ("\\lessapprox" ?≲)
 ("\\lessdot" ?⋖)
 ("\\lesseqgtr" ?⋚)
 ("\\lesseqqgtr" ?⋚)
 ("\\lessgtr" ?≶)
 ("\\lesssim" ?≲)
 ("\\lfloor" ?⌊)
 ("\\lhd" ?◁)
 ("\\rhd" ?▷)
 ("\\ll" ?≪)
 ("\\llcorner" ?⌞)
 ("\\lnapprox" ?⋦)
 ("\\lneq" ?≨)
 ("\\lneqq" ?≨)
 ("\\lnsim" ?⋦)
 ("\\longleftarrow" ?←)
 ("\\longleftrightarrow" ?↔)
 ("\\longmapsto" ?↦)
 ("\\longrightarrow" ?→)
 ("\\looparrowleft" ?↫)
 ("\\looparrowright" ?↬)
 ("\\lozenge" ?✧)
 ("\\lq" ?‘)
 ("\\lrcorner" ?⌟)
 ("\\ltimes" ?⋉)
 ("\\lvertneqq" ?≨)
 ("\\maltese" ?✠)
 ("\\mapsto" ?↦)
 ("\\measuredangle" ?∡)
 ("\\mho" ?℧)
 ("\\mid" ?∣)
 ("\\models" ?⊧)
 ("\\mp" ?∓)
 ("\\multimap" ?⊸)
 ("\\nLeftarrow" ?⇍)
 ("\\nLeftrightarrow" ?⇎)
 ("\\nRightarrow" ?⇏)
 ("\\nVDash" ?⊯)
 ("\\nVdash" ?⊮)
 ("\\nabla" ?∇)
 ("\\napprox" ?≉)
 ("\\natural" ?♮)
 ("\\ncong" ?≇)
 ("\\ne" ?≠)
 ("\\nearrow" ?↗)
 ("\\neg" ?¬)
 ("\\neq" ?≠)
 ("\\nequiv" ?≢)
 ("\\newline" ? )
 ("\\nexists" ?∄)
 ("\\ngeq" ?≱)
 ("\\ngeqq" ?≱)
 ("\\ngeqslant" ?≱)
 ("\\ngtr" ?≯)
 ("\\ni" ?∋)
 ("\\nleftarrow" ?↚)
 ("\\nleftrightarrow" ?↮)
 ("\\nleq" ?≰)
 ("\\nleqq" ?≰)
 ("\\nleqslant" ?≰)
 ("\\nless" ?≮)
 ("\\nmid" ?∤)
 ("\\not" ?̸)
 ("\\notin" ?∉)
 ("\\nparallel" ?∦)
 ("\\nprec" ?⊀)
 ("\\npreceq" ?⋠)
 ("\\nrightarrow" ?↛)
 ("\\nshortmid" ?∤)
 ("\\nshortparallel" ?∦)
 ("\\nsim" ?≁)
 ("\\nsimeq" ?≄)
 ("\\nsubset" ?⊄)
 ("\\nsubseteq" ?⊈)
 ("\\nsubseteqq" ?⊈)
 ("\\nsucc" ?⊁)
 ("\\nsucceq" ?⋡)
 ("\\nsupset" ?⊅)
 ("\\nsupseteq" ?⊉)
 ("\\nsupseteqq" ?⊉)
 ("\\ntriangleleft" ?⋪)
 ("\\ntrianglelefteq" ?⋬)
 ("\\ntriangleright" ?⋫)
 ("\\ntrianglerighteq" ?⋭)
 ("\\nu" ?ν)
 ("\\nvDash" ?⊭)
 ("\\nvdash" ?⊬)
 ("\\nwarrow" ?↖)
 ("\\odot" ?⊙)
 ("\\oint" ?∮)
 ("\\omega" ?ω)
 ("\\ominus" ?⊖)
 ("\\oplus" ?⊕)
 ("\\oslash" ?⊘)
 ("\\otimes" ?⊗)
 ("\\par" ? )
 ("\\parallel" ?∥)
 ("\\partial" ?∂)
 ("\\perp" ?⊥)
 ("\\phi" ?φ)
 ("\\pi" ?π)
 ("\\pitchfork" ?⋔)
 ("\\prec" ?≺)
 ("\\precapprox" ?≾)
 ("\\preceq" ?≼)
 ("\\precnapprox" ?⋨)
 ("\\precnsim" ?⋨)
 ("\\precsim" ?≾)
 ("\\prime" ?′)
 ("\\prod" ?∏)
 ("\\propto" ?∝)
 ("\\psi" ?ψ)
 ("\\qed" ?∎)
 ("\\quad" ? )
 ("\\rangle" ?〉)
 ("\\rbrace" ?})
 ("\\rbrack" ?\])
 ("\\rceil" ?⌉)
 ("\\rfloor" ?⌋)
 ("\\rightarrow" ?→)
 ("\\rightarrowtail" ?↣)
 ("\\rightharpoondown" ?⇁)
 ("\\rightharpoonup" ?⇀)
 ("\\rightleftarrows" ?⇄)
 ("\\rightleftharpoons" ?⇌)
 ("\\rightparengtr" ?〉)
 ("\\rightrightarrows" ?⇉)
 ("\\rightthreetimes" ?⋌)
 ("\\risingdotseq" ?≓)
 ("\\rtimes" ?⋊)
 ("\\sbs" ?﹨)
 ("\\searrow" ?↘)
 ("\\setminus" ?∖)
 ("\\sharp" ?♯)
 ("\\shortmid" ?∣)
 ("\\shortparallel" ?∥)
 ("\\sigma" ?σ)
 ("\\sim" ?∼)
 ("\\simeq" ?≃)
 ("\\smallamalg" ?∐)
 ("\\smallsetminus" ?∖)
 ("\\smallsmile" ?⌣)
 ("\\smile" ?⌣)
 ("\\spadesuit" ?♠)
 ("\\sphericalangle" ?∢)
 ("\\sqcap" ?⊓)
 ("\\sqcup" ?⊔)
 ("\\sqsubset" ?⊏)
 ("\\sqsubseteq" ?⊑)
 ("\\sqsupset" ?⊐)
 ("\\sqsupseteq" ?⊒)
 ("\\square" ?□)
 ("\\squigarrowright" ?⇝)
 ("\\star" ?⋆)
 ("\\straightphi" ?φ)
 ("\\subset" ?⊂)
 ("\\subseteq" ?⊆)
 ("\\subseteqq" ?⊆)
 ("\\subsetneq" ?⊊)
 ("\\subsetneqq" ?⊊)
 ("\\succ" ?≻)
 ("\\succapprox" ?≿)
 ("\\succcurlyeq" ?≽)
 ("\\succeq" ?≽)
 ("\\succnapprox" ?⋩)
 ("\\succnsim" ?⋩)
 ("\\succsim" ?≿)
 ("\\sum" ?∑)
 ("\\supset" ?⊃)
 ("\\supseteq" ?⊇)
 ("\\supseteqq" ?⊇)
 ("\\supsetneq" ?⊋)
 ("\\supsetneqq" ?⊋)
 ("\\surd" ?√)
 ("\\swarrow" ?↙)
 ("\\tau" ?τ)
 ("\\therefore" ?∴)
 ("\\theta" ?θ)
 ("\\thickapprox" ?≈)
 ("\\thicksim" ?∼)
 ("\\to" ?→)
 ("\\top" ?⊤)
 ("\\triangle" ?▵)
 ("\\triangledown" ?▿)
 ("\\triangleleft" ?◃)
 ("\\trianglelefteq" ?⊴)
 ("\\triangleq" ?≜)
 ("\\triangleright" ?▹)
 ("\\trianglerighteq" ?⊵)
 ("\\twoheadleftarrow" ?↞)
 ("\\twoheadrightarrow" ?↠)
 ("\\ulcorner" ?⌜)
 ("\\uparrow" ?↑)
 ("\\updownarrow" ?↕)
 ("\\upleftharpoon" ?↿)
 ("\\uplus" ?⊎)
 ("\\uprightharpoon" ?↾)
 ("\\upsilon" ?υ)
 ("\\upuparrows" ?⇈)
 ("\\urcorner" ?⌝)
 ("\\u{i}" ?ĭ)
 ("\\vDash" ?⊨)
 ("\\varkappa" ?ϰ)
 ("\\varphi" ?ϕ)
 ("\\varpi" ?ϖ)
 ("\\varprime" ?′)
 ("\\varpropto" ?∝)
 ("\\varrho" ?ϱ)
 ("\\varsigma" ?ς)
 ("\\vartheta" ?ϑ)
 ("\\vartriangleleft" ?⊲)
 ("\\vartriangleright" ?⊳)
 ("\\vdash" ?⊢)
 ("\\vdots" ?⋮)
 ("\\vee" ?∨)
 ("\\veebar" ?⊻)
 ("\\vert" ?|)
 ("\\wedge" ?∧)
 ("\\wp" ?℘)
 ("\\wr" ?≀)
 ("\\xi" ?ξ)
 ("\\zeta" ?ζ)

 ("\\Bbb{N}" ?ℕ)			; AMS commands for blackboard bold
 ("\\Bbb{P}" ?ℙ)			; Also sometimes \mathbb.
 ("\\Bbb{R}" ?ℝ)
 ("\\Bbb{Z}" ?ℤ)
 ("--" ?–)
 ("---" ?—)
 ;; We used to use ~ for NBSP but that's inconvenient and may even look like
 ;; a bug where the user finds his ~ key doesn't insert a ~ any more.
 ("\\ " ? )
 ("\\\\" ?\\)
 ("\\mu" ?μ)
 ("\\rho" ?ρ)
 ("\\mathscr{I}" ?ℐ)			; moment of inertia
 ("\\Smiley" ?☺)
 ("\\blacksmiley" ?☻)
 ("\\Frowny" ?☹)
 ("\\Letter" ?✉)
 ("\\permil" ?‰)
 ;; Probably not useful enough:
 ;; ("\\Telefon" ?☎)			; there are other possibilities
 ;; ("\\Radioactivity" ?☢)
 ;; ("\Biohazard" ?☣)
 ;; ("\\Male" ?♂)
 ;; ("\\Female" ?♀)
 ;; ("\\Lightning" ?☇)
 ;; ("\\Mercury" ?☿)
 ;; ("\\Earth" ?♁)
 ;; ("\\Jupiter" ?♃)
 ;; ("\\Saturn" ?♄)
 ;; ("\\Uranus" ?♅)
 ;; ("\\Neptune" ?♆)
 ;; ("\\Pluto" ?♇)
 ;; ("\\Sun" ?☉)
 ;; ("\\Writinghand" ?✍)
 ;; ("\\Yinyang" ?☯)
 ;; ("\\Heart" ?♡)
 ("\\registered" ?®)
 ("\\currency" ?¤)
 ("\\dh" ?ð)
 ("\\DH" ?Ð)
 ("\\th" ?þ)
 ("\\TH" ?Þ)
 ("\\micro" ?µ)
 ("\\lnot" ?¬)
 ("\\ordfeminine" ?ª)
 ("\\ordmasculine" ?º)
 ("\\lambdabar" ?ƛ)
 ("\\celsius" ?℃)
 ;; by analogy with lq, rq:
 ("\\ldq" ?\“)
 ("\\rdq" ?\”)
 ("\\minus" ?−)
 ("\\defs" ?≙)				; per fuzz/zed
 ;; ("\\sqrt[3]" ?∛)
 ("\\llbracket" ?\〚) 			; stmaryrd
 ("\\rrbracket" ?\〛) 
 ;; ("\\lbag" ?\〚) 			; fuzz
 ;; ("\\rbag" ?\〛)
 ("\\ldata" ?\《) 			; fuzz/zed
 ("\\rdata" ?\》)
 ;; From Karl Eichwalder.
 ("\\glq"  ?‚)
 ("\\grq"  ?‘)
 ("\\glqq"  ?„) ("\\\"`"  ?„)
 ("\\grqq"  ?“) ("\\\"'"  ?“)
 ("\\flq" ?‹)
 ("\\frq" ?›)
 ("\\flqq" ?\«) ("\\\"<" ?\«)
 ("\\frqq" ?\») ("\\\">" ?\»)

 ("\\-" ?­)   ;; soft hyphen

 ("\\textmu" ?µ)
 ("\\textfractionsolidus" ?⁄)
 ("\\textbigcircle" ?⃝)
 ("\\textmusicalnote" ?♪)
 ("\\textdied" ?✝)
 ("\\textcolonmonetary" ?₡)
 ("\\textwon" ?₩)
 ("\\textnaira" ?₦)
 ("\\textpeso" ?₱)
 ("\\textlira" ?₤)
 ("\\textrecipe" ?℞)
 ("\\textinterrobang" ?‽)
 ("\\textpertenthousand" ?‱)
 ("\\textbaht" ?฿)
 ("\\textnumero" ?№)
 ("\\textdiscount" ?⁒)
 ("\\textestimated" ?℮)
 ("\\textopenbullet" ?◦)
 ("\\textlquill" ?⁅)
 ("\\textrquill" ?⁆)
 ("\\textcircledP" ?℗)
 ("\\textreferencemark" ?※)
 )

;; arch-tag: 3daae613-2c53-446e-a0a1-ee2e1ebed15f
;;; latin-ltx.el ends here
