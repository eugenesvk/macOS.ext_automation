JsOsaDAS1.001.00bplist00�VscriptoN / * 
 I n s t a l l :   s a v e   t h i s   s c r i p t   i n   a   ' S c r i p t   b u n d l e '   f o r m a t   t o   ' ~ / L i b r a r y / S c r i p t   L i b r a r i e s '   ( o r   ' / L i b r a r y / S c r i p t   L i b r a r i e s '   f o r   a l l   u s e r s ) 
 U s e   i n   y o u r   s c r i p t : 
 c o n s t   s t r 	 =   L i b r a r y ( " s t r " )   / /   i m p o r t 
 
 c o n s t   u r l 	 =   " s c h e m e : / / h . o . s t / p a t h " 
 c o n s t   { s c h e m e , h o s t , p a t h , n s s c h e m e , n s h o s t , n s p a t h , }   =   s t r . g e t U R L p a r t ( u r l ) 
 c o n s o l e . l o g ( ` s c h e m e   = � $ { s c h e m e } � ` ) 	 / /   s c h e m e 
 c o n s o l e . l o g ( ` h o s t   = � $ { h o s t } � ` )         	 / /   h . o . s t 
 c o n s o l e . l o g ( ` p a t h   = � $ { p a t h } � ` )         	 / /   / p a t h 
 * / 
 
 f u n c t i o n   g e t U R L p a r t ( u r l )   {   / /   u s e   O b j - C   A P I   t o   g e t   U R L   c o m p o n e n t s 
     c o n s t   u r l C o m p o n e n t s   =   $ . N S U R L C o m p o n e n t s . c o m p o n e n t s W i t h S t r i n g ( u r l ) 
     c o n s t   N S s c h e m e 	 =   u r l C o m p o n e n t s . s c h e m e 
     c o n s t   N S h o s t     	 =   u r l C o m p o n e n t s . h o s t 
     c o n s t   N S p a t h     	 =   u r l C o m p o n e n t s . p a t h 
     c o n s t   s c h e m e     	 =   N S s c h e m e . j s 
     c o n s t   h o s t         	 =   N S h o s t . j s 
     c o n s t   p a t h         	 =   N S p a t h . j s 
 
     r e t u r n   { s c h e m e : s c h e m e , h o s t : h o s t , p a t h : p a t h , n s s c h e m e : N S s c h e m e , n s h o s t : N S h o s t , n s p a t h : N S p a t h , } 
 } 
 
 f u n c t i o n   g e t _ i l l e g a l _ f s _ s y m b o l s ( )   { 
     r e t u r n   {       / /   r e p l a c e   i l l e g a l   f i l e s y s t e m   s y m b o l s   ( w i n / m a c   f o r   c o m p a t i b i l i t y ) 
     ' / ' : ')� ' , 
     ' \ \ ' : ')� ' , 
     ' * ' : '" ' , 
     ' : ' : '�� ' , 
     ' " ' : '  ' , 
     ' | ' : ' � ' , 
     ' < ' : ' 9 ' , 
     ' > ' : ' : ' , 
     ' ? ' : '.. ' , 
     ' ^ ' : '� ' , 
 } } 
                              �jscr  ��ޭ