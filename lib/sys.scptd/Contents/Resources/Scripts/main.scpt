JsOsaDAS1.001.00bplist00�Vscripto= / * 
 I n s t a l l :   s a v e   t h i s   s c r i p t   i n   a   ' S c r i p t   b u n d l e '   f o r m a t   t o   ' ~ / L i b r a r y / S c r i p t   L i b r a r i e s '   ( o r   ' / L i b r a r y / S c r i p t   L i b r a r i e s '   f o r   a l l   u s e r s ) 
 U s e   i n   y o u r   s c r i p t : 
 c o n s t   s y s 	 =   L i b r a r y ( " s y s " )   / /   i m p o r t 
 / / 1   G e t   a p p   n a m e 
 c o n s t   f r o n t A p p N a m e 	 =   s y s . g e t F r o n t P r o c N a m e ( ) 
 c o n s o l e . l o g ( ` f r o n t A p p N a m e   = � $ { f r o n t A p p N a m e } � ` )   / / " S c r i p t   E d i t o r " 
 
 / / 2   s h o r t e r   p r i n t   f u n c t i o n s 
 c o n s t   p   	 =   s y s . p   	 / /   h e l p e r   c o n s o l e   l o g 
 c o n s t   p p 	 =   s y s . p p 	 / /   h e l p e r   p r i n t   v a r   n a m e s ,   m u s t   b e   p a s s e d   a s   { o b j e c t s } 
 c o n s t   p t 	 =   s y s . p t 	 / /   h e l p e r   p r i n t   v a r ' s   t y p e   a n d   v a r ' s   v a l u e 
 c o n s t   p s 	 =   s y s . p s 	 / /   h e l p e r   p r i n t   o b j e c t s   v i a   s t r i n g i f y ,   l a s t   p a r a m e t e r   i f   n u m e r i c   0  4   s i g n a l s   i d e n t a t i o n   l e n g t h 
 * / 
 
 f u n c t i o n   g e t F r o n t P r o c N a m e ( )   {   / /   G e t   t h e   n a m e   o f   t h e   c u r r e n t   a p p l i c a t i o n . 
     c o n s t   s y s               	 =   A p p l i c a t i o n ( " S y s t e m   E v e n t s " ) 
     c o n s t   p r o c s           	 =   s y s . p r o c e s s e s 
     c o n s t   p r o c _ f r o n t 	 =   p r o c s . w h o s e ( { f r o n t m o s t : { ' = ' : t r u e } } ) [ 0 ]   / / . w h e r e ( { f r o n t m o s t : t r u e } ) [ 0 ] . n a m e ( ) 
     c o n s t   p r o c _ n a m e   	 =   p r o c _ f r o n t . n a m e ( ) 
 
     r e t u r n   p r o c _ n a m e 
 } 
 
 f u n c t i o n   p r i n t A p p ( a p p = n u l l )   {   / /   P r i n t   a l l   p r o p e r t i e s   o f   t h e   p a s s e d   a p p l i c a t i o n 
     i f   ( a p p   = = =   n u l l )   { r e t u r n } 
     c o n s t   a p p P r o p s 	 =   a p p . p r o p e r t i e s ( ) 
     f o r   ( p   i n   a p p P r o p s )   { 
         c o n s t   v   =   p   ?   ` $ { p } :   $ { A u t o m a t i o n . g e t D i s p l a y S t r i n g ( a p p P r o p s [ p ] ) } `   :   " u n d e f i n e d " 
         c o n s o l e . l o g ( v ) 
     } 
     / /!�   o n l y   n a m e s   o f   p r o p 
 	 / / c o n s t   e l e m e n t s   =   a p p . p r o p e r t i e s O f C l a s s ( " a p p l i c a t i o n " ) ; 
     / / e l e m e n t s . f o r E a c h (   e l   = >   c o n s o l e . l o g ( e l ) ) ; 
 	 / / c o n s t   e l e m e n t s   =   a p p . e l e m e n t s O f C l a s s ( " a p p l i c a t i o n " ) ; 
     / / T h i s   w i l l   t e l l   y o u   a b o u t   a l l   e l e m e n t s ,   i . e .   c h i l d   o b j e c t s .   T h e s e   e l e m e n t s   a r e   a l w a y s   l i s t s : 
 	 / / e l e m e n t s . s o r t ( ) . f o r E a c h (   e   = >   { 
     / /     c o n s o l e . l o g ( ` $ { e }   h a s   $ { a p p [ e ] ( ) . l e n g t h }   e l e m e n t s ` ) ; 
     / / } ) 
 } 
 
 f u n c t i o n   p r i n t A p p P r o p T ( a p p = n u l l )   {   / /   P r i n t   a l l   p r o p e r t i e s '   t y p e s   o f   t h e   p a s s e d   a p p l i c a t i o n 
     i f   ( a p p   = = =   n u l l )   { r e t u r n } 
     c o n s t   p r o p s   =   a p p . p r o p e r t i e s O f C l a s s ( " a p p l i c a t i o n " ) ; 
     p r o p s . f o r E a c h (   p   = >   { 
         l e t   t   =   a p p . p r o p e r t y T y p e F o r N a m e I n C l a s s ( p ) 
         c o n s o l e . l o g ( ` $ { p }   i s   o f   t y p e   " $ { t } " ` ) ; 
     } ) 
 } 
 
 f u n c t i o n   p r i n t A p p C o m m a n d ( a p p = n u l l , c m d = n u l l )   {   / /   P r i n t   p a r a m e t e r s   o f   a   c o m m a n d   ( m e t h o d )   a n d   t h e i r   t y p e 
     i f   ( a p p   = = =   n u l l )   { r e t u r n } 
     i f   ( c m d   = = =   n u l l )   { r e t u r n } 
     c o n s t   p a r a m s   =   a p p . p a r a m e t e r N a m e s F o r C o m m a n d ( c m d ) 
     p a r a m s . f o r E a c h (   p   = >   { 
         l e t   t   =   a p p . p a r a m e t e r T y p e F o r N a m e I n C o m m a n d ( p ) 
         c o n s o l e . l o g ( ` $ { p }   i s   o f   t y p e   " $ { t } " ` ) 
     } ) 
 } 
 
 
 f u n c t i o n   p ( . . . i t e m s )   {   / /   h e l p e r   c o n s o l e   l o g 
     c o n s o l e . l o g ( . . . i t e m s ) ;   } 
 f u n c t i o n   p p ( . . . i t e m s )   {   / /   h e l p e r   p r i n t   v a r   n a m e s ,   m u s t   b e   p a s s e d   a s   { o b j e c t s } 
     f o r   ( c o n s t   i t e m   o f   i t e m s )   { 
         c o n s t   [ i N a m e ] 	 =   O b j e c t . k e y s ( i t e m ) ; 
         c o n s t   i V a l       	 =   i t e m [ i N a m e ] ; 
         c o n s t   i T           	 =   t y p e o f ( i V a l ) ; 
         c o n s o l e . l o g ( ` $ { i N a m e } ( $ { i T } ) = � ` , i V a l , ' � ' ) ;   } 
 } 
 f u n c t i o n   p t ( . . . i t e m s )   {   / /   h e l p e r   p r i n t   v a r ' s   t y p e   a n d   v a r ' s   v a l u e 
     f o r   ( c o n s t   i t e m   o f   i t e m s )   {   c o n s o l e . l o g ( t y p e o f ( i t e m ) , i t e m ) ;   }   } 
 f u n c t i o n   p s ( . . . i t e m s )   {   / /   h e l p e r   p r i n t   o b j e c t s   v i a   s t r i n g i f y 
     l e t   s               	 =   2 
     l e t   s k i p L a s t 	 =   f a l s e 
     c o n s t   s V a l i d 	 =   [ 0 , 1 , 2 , 3 , 4 ] 
     c o n s t   l a s t i   	 =   i t e m s . l e n g t h   -   1 
     c o n s t   l a s t     	 =   i t e m s . a t ( - 1 ) 
     i f   ( s V a l i d . i n c l u d e s ( l a s t ) )   { 
         s               	 =   l a s t 
         s k i p L a s t 	 =   t r u e 
     } 
     i t e m s . f o r E a c h ( f u n c t i o n   ( v a l u e ,   i )   { 
         i f   ( ( s k i p L a s t )   & &   ( i   = =   l a s t i ) )   { }   e l s e   { 
             c o n s o l e . l o g ( J S O N . s t r i n g i f y ( v a l u e , n u l l , s ) ) } 
     } ) 
 }                              �jscr  ��ޭ