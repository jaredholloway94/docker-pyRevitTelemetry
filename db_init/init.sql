CREATE DATABASE pyrevit_telemetry;

CREATE DATABASE metabase;

\c pyrevit_telemetry;

CREATE TABLE scripts (
	recordid uuid NOT NULL,
	"timestamp" timestamp NULL,
	username varchar(255) NULL,
	host_user varchar(255) NULL,
	revit varchar(255) NULL,
	revitbuild varchar(255) NULL,
	sessionid varchar(255) NULL,
	pyrevit varchar(255) NULL,
	clonename varchar(255) NULL,
	debug bool NULL,
	config bool NULL,
	fromgui bool NULL,
	exec_id varchar(255) NULL,
	exec_timestamp varchar(255) NULL,
	commandname varchar(255) NULL,
	commandbundle varchar(255) NULL,
	commandextension varchar(255) NULL,
	commanduniquename text NULL,
	docname text NULL,
	docpath text NULL,
	resultcode int4 NULL,
	commandresults json NULL,
	scriptpath text NULL,
	traceenginetype varchar(255) NULL,
	traceenginever varchar(255) NULL,
	traceenginesyspaths text NULL,
	traceengineconfigs json NULL,
	tracemsg text NULL,
	CONSTRAINT pyrevitusage2_pk PRIMARY KEY (recordid)
);

CREATE TABLE events (
	recordid uuid NOT NULL,
	"timestamp" timestamp NULL,
        handler_id varchar(255) NULL,
	eventtype varchar(255) NULL,
	eventargs json NULL,
	username varchar(255) NULL,
	host_user varchar(255) NULL,
	revit varchar(255) NULL,
	revitbuild varchar(255) NULL,
	cancellable bool NULL,
	cancelled bool NULL,
	docid int4 NULL,
	doctype int4 NULL,
	doctemplate text NULL,
	docname text NULL,
	docpath text NULL,
	projectnum text NULL,
	projectname text NULL,
	CONSTRAINT revitevents2_pk PRIMARY KEY (recordid)
);


