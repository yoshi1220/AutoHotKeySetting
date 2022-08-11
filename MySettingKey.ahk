#Include IME.ahk

RCtrl & B::Send,{Left}
RCtrl & N::Send,{Down}
RCtrl & P::Send,{Up}
RCtrl & F::Send,{Right}
RCtrl & H::Send,{BS}
RCtrl & D::Send,{Del}
RCtrl & J::Send,{Left}^{Right}+^{Left}{Del}
RCtrl & A::Send,{Home}
RCtrl & E::Send,{End}
RCtrl & K::Send,+{End}{Del}
RCtrl & L::Send,+{Home}{Del}
RCtrl & V::Send,^{Left}
RCtrl & M::Send,^{Right}
RCtrl & U::Send,+{Home}{Del}
RCtrl & W::Send,{Right}^{Right}+^{Left}
RCtrl & Q::Send,{Left}^{Left}+^{Right}
RCtrl & `;::Send,{;}
RCtrl & Y::
	clipboard =
	Send,{Home}+{End}^c
	ClipWait
	Send,{End}
	Return
	
RCtrl & Enter::Send,{End}{Enter}

; 上部メニューがアクティブになるのを抑制
;*~LAlt::Send {Blind}{vk07}
;*~RAlt::Send {Blind}{vk07}

; 左 Alt 空打ちで IME を OFF
;LAlt up::
;    if (A_PriorHotkey == "*~LAlt")
;    {
;        IME_SET(0)
;    }
;    Return

; 右 Alt 空打ちで IME を ON
;RAlt up::
;    if (A_PriorHotkey == "*~RAlt")
;    {
;        IME_SET(1)
;    }
;    Return
    
