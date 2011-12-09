OBJYARCH			= linux86gcc3
OBJYFLAGS		= -L$(OBJYLIB) -loo	-lrpcsvc -lnsl -ldl -pthread
CC					= g++
LD					= g++
LDFLAGS			= $(OBJYFLAGS)

OBJY_HOME		= /dist/dev_nightly_linux86gcc3/install
OBJYPATH			= $(OBJY_HOME)/$(OBJYARCH)
OBJYBIN			= $(OBJYPATH)/bin
OBJYINCLUDES	= $(OBJYPATH)/include
OBJYLIB			= $(OBJYPATH)/lib

OBJY_LS			= `hostname`

OODDLX			= ooddlx 
OONEWFD			= oonewfd
