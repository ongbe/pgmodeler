# pt_BR:
# Definição SQL para banco de dados
# Versão PostgreSQL: 8.0
# ATENÇÃO: Não modifique este arquivo a não ser que você saiba
#          o que está fazendo.
#
# en_US:
# SQL definition for databases
# PostgreSQL Version: 8.0
# CAUTION: Do not modify this file unless that you know what
#          you are doing.

[-- object: ] @{name} [ | type: ] @{sql-object} [ -- ] $br

%if @{comment} %then [-- ] @{comment} [ --] $br %end

[CREATE DATABASE ] @{name} $br

%if @{template} %then
  $tb [TEMPLATE = ] @{template} $br
%end

%if @{encoding} %then
  $tb [ENCODING = ] @{encoding} $br
%end

%if @{tablespace} %then
  $tb [TABLESPACE = ] @{tablespace} $br
%end

%if @{owner} %then
  $tb [OWNER = ] @{owner} $br
%end

; $br
