unit UGeneralesEnvipe;

interface

uses
  RLibrerias, SysUtils, XConstantes;

type
  TENVIPE = class(TTipoInstalacion)
  private

   protected
     function getPatchLevel: integer; override;
     function getTitle: String; override;

   published
     property patch: integer read getPatchLevel;
     property title: string read getTitle;
  end;

function getRolUsuario: TRolesUsuarios;

implementation

uses
  Ulibrerias;

function TENVIPE.getPatchLevel: integer;
begin
  result:= ord(fkind);
end;

function TENVIPE.getTitle: string;
begin
  case fkind of
    N0: result:= 'SUPERVISOR CENTRAL';             // OC  Ofinas centrales             08-99
    N1: result:= 'SUPERVISOR REGIONAL';            // DR  Direccion regional           01..10
    N2: result:= 'SUPERVISOR CENTRAL';             // SP  Supervisor centro o regional 01..99
    N3: result:= 'SUPERVISOR REGIONAL';            // CE  Responsable estatal          01..33
    N6: result:= 'JEFE DE ENTREVISTADORES';        // JE  Jefe de entrevistadores      01..99
    N7: result:= 'ENTREVISTADOR';                  // EN  Entrevistador                01..99
    N8: result:= 'TENVIPE2019 Nivel no utilizado';    // NO  No usado
    N9: result:= 'TENVIPE2019 Instructor estatal';    // IE  Instructor estatal           1..9
  end; // case
end;

function getRolUsuario: TRolesUsuarios;
begin
	try
		if not (Usuario.ID_ROL in [ ROL_ESPECIAL, ROL_CARGA_INICIAL, ROL_SOPORTE, ROL_EXPORTAR, ROL_INSTRUCTOR]) then begin
      if ((datosInstalacion.TYPE_INSTALL.isEN) or ((datosInstalacion.TYPE_INSTALL.isLocal) and (Usuario.ID_ROL= ROL_ENTREVISTADOR))) then
        result:= ROL_ENTREVISTADOR
      else
        if (datosInstalacion.TYPE_INSTALL.isJE) or ((datosInstalacion.TYPE_INSTALL.isLocal) and (Usuario.ID_ROL= ROL_SUPERVISOR)) then
          result:= ROL_SUPERVISOR
        else
          if ((datosInstalacion.TYPE_INSTALL.isSC_SR) or (datosInstalacion.TYPE_INSTALL.isLocal) or (datosInstalacion.TYPE_INSTALL.isISE)) then
            result:= ROL_ISE;
	 	end//if
		else
	    result:=Usuario.ID_ROL ;
	except
		on e: Exception do begin
			managerException('[UGeneralesAPLICACION.getRolUsuario]', e);
			raise;
		end; // on e
	end; // try-except
end;

end.
