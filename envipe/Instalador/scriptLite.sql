delete from TC_CLAVES_OPERATIVAS;
delete from TR_MOVIL_USUARIOS where num_emp not like 'X%';
update TR_MOVIL_USUARIOS set activo=1 where num_emp  like 'X%';
update tc_movil_configuraciones set registrado=0, clave=null, id_clave_operativa=null, semilla=null, id_entidad_oficina=null, co_estatal = null;