﻿
ALTER TABLE epsg_alias  ADD  CONSTRAINT fk_naming_system_code FOREIGN KEY(naming_system_code)
REFERENCES epsg_namingsystem (naming_system_code);

ALTER TABLE epsg_coordinateaxis  ADD  CONSTRAINT fk_coord_axis_name_code FOREIGN KEY(coord_axis_name_code)
REFERENCES epsg_coordinateaxisname (coord_axis_name_code);
 
ALTER TABLE epsg_coordinateaxis  ADD  CONSTRAINT fk_coord_sys_code FOREIGN KEY(coord_sys_code)
REFERENCES epsg_coordinatesystem (coord_sys_code);
 
ALTER TABLE epsg_coordinateaxis  ADD  CONSTRAINT fk_uom_code2 FOREIGN KEY(uom_code)
REFERENCES epsg_unitofmeasure (uom_code);
 
ALTER TABLE epsg_coordinatereferencesystem  ADD  CONSTRAINT fk_base_crs_code FOREIGN KEY(base_crs_code)
REFERENCES epsg_coordinatereferencesystem (coord_ref_sys_code);
 
ALTER TABLE epsg_coordinatereferencesystem  ADD  CONSTRAINT fk_cmpd_horizcrs_code FOREIGN KEY(cmpd_horizcrs_code)
REFERENCES epsg_coordinatereferencesystem (coord_ref_sys_code);
 
ALTER TABLE epsg_coordinatereferencesystem  ADD  CONSTRAINT fk_cmpd_vertcrs_code FOREIGN KEY(cmpd_vertcrs_code)
REFERENCES epsg_coordinatereferencesystem (coord_ref_sys_code);
 
ALTER TABLE epsg_coordinatereferencesystem  ADD  CONSTRAINT fk_coord_sys_code2 FOREIGN KEY(coord_sys_code)
REFERENCES epsg_coordinatesystem (coord_sys_code);
 
ALTER TABLE epsg_coordinatereferencesystem  ADD  CONSTRAINT fk_datum_code FOREIGN KEY(datum_code)
REFERENCES epsg_datum (datum_code);
 
ALTER TABLE epsg_coordoperation  ADD  CONSTRAINT fk_coord_op_method_code FOREIGN KEY(coord_op_method_code)
REFERENCES epsg_coordoperationmethod (coord_op_method_code);
 
ALTER TABLE epsg_coordoperation  ADD  CONSTRAINT fk_source_crs_code FOREIGN KEY(source_crs_code)
REFERENCES epsg_coordinatereferencesystem (coord_ref_sys_code);
 
ALTER TABLE epsg_coordoperation  ADD  CONSTRAINT fk_target_crs_code FOREIGN KEY(target_crs_code)
REFERENCES epsg_coordinatereferencesystem (coord_ref_sys_code);
 
ALTER TABLE epsg_coordoperation  ADD  CONSTRAINT fk_uom_code_source_coord_diff FOREIGN KEY(uom_code_source_coord_diff)
REFERENCES epsg_unitofmeasure (uom_code);
 
ALTER TABLE epsg_coordoperation  ADD  CONSTRAINT fk_uom_code_target_coord_diff FOREIGN KEY(uom_code_target_coord_diff)
REFERENCES epsg_unitofmeasure (uom_code);
 
ALTER TABLE epsg_coordoperationparamusage  ADD  CONSTRAINT fk_coord_op_method_code2 FOREIGN KEY(coord_op_method_code)
REFERENCES epsg_coordoperationmethod (coord_op_method_code);
 
ALTER TABLE epsg_coordoperationparamusage  ADD  CONSTRAINT fk_parameter_code FOREIGN KEY(parameter_code)
REFERENCES epsg_coordoperationparam (parameter_code);
 
ALTER TABLE epsg_coordoperationparamvalue  ADD  CONSTRAINT fk_coord_op_code FOREIGN KEY(coord_op_code)
REFERENCES epsg_coordoperation (coord_op_code);
 
ALTER TABLE epsg_coordoperationparamvalue  ADD  CONSTRAINT fk_parameter_codecoord_op_meth FOREIGN KEY(parameter_code, coord_op_method_code)
REFERENCES epsg_coordoperationparamusage (parameter_code, coord_op_method_code);
 
ALTER TABLE epsg_coordoperationparamvalue  ADD  CONSTRAINT fk_uom_code3 FOREIGN KEY(uom_code)
REFERENCES epsg_unitofmeasure (uom_code);
 
ALTER TABLE epsg_coordoperationpath  ADD  CONSTRAINT fk_concat_operation_code FOREIGN KEY(concat_operation_code)
REFERENCES epsg_coordoperation (coord_op_code);
 
ALTER TABLE epsg_coordoperationpath  ADD  CONSTRAINT fk_single_operation_code FOREIGN KEY(single_operation_code)
REFERENCES epsg_coordoperation (coord_op_code);
 
ALTER TABLE epsg_datum  ADD  CONSTRAINT fk_conventionalrs FOREIGN KEY(conventional_rs_code)
REFERENCES epsg_conventionalrs (conventional_rs_code);
 
ALTER TABLE epsg_datum  ADD  CONSTRAINT fk_ellipsoid_code FOREIGN KEY(ellipsoid_code)
REFERENCES epsg_ellipsoid (ellipsoid_code);
 
ALTER TABLE epsg_datum  ADD  CONSTRAINT fk_prime_meridian_code FOREIGN KEY(prime_meridian_code)
REFERENCES epsg_primemeridian (prime_meridian_code);
 
ALTER TABLE epsg_datum  ADD  CONSTRAINT fk_realization_method FOREIGN KEY(realization_method_code)
REFERENCES epsg_datumrealizationmethod (realization_method_code);
 
ALTER TABLE epsg_datumensemble  ADD  CONSTRAINT fk_datumensemble_datum FOREIGN KEY(datum_ensemble_code)
REFERENCES epsg_datum (datum_code);
 
ALTER TABLE epsg_datumensemblemember  ADD  CONSTRAINT fk_member_datum_code FOREIGN KEY(datum_code)
REFERENCES epsg_datum (datum_code);
 
ALTER TABLE epsg_datumensemblemember  ADD  CONSTRAINT fk_datum_ensemble_code FOREIGN KEY(datum_ensemble_code)
REFERENCES epsg_datumensemble (datum_ensemble_code);
 
ALTER TABLE epsg_definingoperation  ADD  CONSTRAINT fk_defop_crs_code FOREIGN KEY(crs_code)
REFERENCES epsg_coordinatereferencesystem (coord_ref_sys_code);
 
ALTER TABLE epsg_definingoperation  ADD  CONSTRAINT fk_defop_coordop_code FOREIGN KEY(ct_code)
REFERENCES epsg_coordoperation (coord_op_code);
 
ALTER TABLE epsg_deprecation  ADD  CONSTRAINT fk_change_id FOREIGN KEY(change_id)
REFERENCES epsg_change (change_id);
 
ALTER TABLE epsg_ellipsoid  ADD  CONSTRAINT fk_uom_code4 FOREIGN KEY(uom_code)
REFERENCES epsg_unitofmeasure (uom_code);
 
ALTER TABLE epsg_extent  ADD  CONSTRAINT fk_vertical_crs_code FOREIGN KEY(vertical_extent_crs_code)
REFERENCES epsg_coordinatereferencesystem (coord_ref_sys_code);
 
ALTER TABLE epsg_primemeridian  ADD  CONSTRAINT fk_uom_code FOREIGN KEY(uom_code)
REFERENCES epsg_unitofmeasure (uom_code);
 
ALTER TABLE epsg_unitofmeasure  ADD  CONSTRAINT fk_target_uom_code FOREIGN KEY(target_uom_code)
REFERENCES epsg_unitofmeasure (uom_code);
 
ALTER TABLE epsg_usage  ADD  CONSTRAINT fk_usage_extent FOREIGN KEY(extent_code)
REFERENCES epsg_extent (extent_code);
 
ALTER TABLE epsg_usage  ADD  CONSTRAINT fk_usage_scope FOREIGN KEY(scope_code)
REFERENCES epsg_scope (scope_code);
 