bob crencas: { estaChovendo ; naotenhoGuardaChuva ; }
objetivos: { comprarGuardaChuva ; naoPegarChuva ; }
planos: { plano1 ( comprarGuardaChuva ; estaChovendo E naotenhoGuardaChuva ;
{ sair; procurarLoja; comprarGuardaChuva; } ) ;
plano2 ( naoPegarChuva ; NAO estaChovendo ; { sair; jogarBola ; } ) ;
plano3 ( naoPegarChuva ; estaChovendo E naotenhoGuardaChuva ;
{ ficarEmCasa ; estudar ; } ) ; }


estaChovendo.
naotenhoGuardaChuva.

!comprarGuardaChuva.
!naoPegarChuva.

+!comprarGuardaChuva: estaChovendo & naotenhoGuardaChuva <- sair; procurarLoja; comprarGuardaChuva.

+!naoPegarChuva: not estaChovendo <- sair; jogarBola.

+!naoPegarChuva: estaChovendo & naotenhoGuardaChuva <- ficarEmCasa ; estudar.
