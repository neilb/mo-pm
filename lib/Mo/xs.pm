package Mo::xs;my$M="Mo::";
$VERSION=0.37;
require Class::XSAccessor;*{$M.'xs::e'}=sub{my($P,$e,$o,$f)=@_;$P=~s/::$//;$e->{has}=sub{my($n,%a)=@_;Class::XSAccessor->import(class=>$P,accessors=>{$n=>$n})}if!grep!/^xs$/,@$f};
