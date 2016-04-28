#
# The Makefile compiles c wrappers and testers for CBLAS.
#

TOPDIR = ..
include $(TOPDIR)/Makefile.system

override CFLAGS += -DADD$(BU) -DCBLAS

LIB = $(TOPDIR)/$(LIBNAME)

stestl1o = c_sblas1.o

stestl2o = c_sblas2.o c_s2chke.o auxiliary.o c_xerbla.o constant.o

stestl3o = c_sblas3.o c_s3chke.o auxiliary.o c_xerbla.o constant.o

dtestl1o = c_dblas1.o

dtestl2o = c_dblas2.o c_d2chke.o auxiliary.o c_xerbla.o constant.o

dtestl3o = c_dblas3.o c_d3chke.o auxiliary.o c_xerbla.o constant.o

ctestl1o = c_cblas1.o

ctestl2o = c_cblas2.o c_c2chke.o auxiliary.o c_xerbla.o constant.o

ctestl3o = c_cblas3.o c_c3chke.o auxiliary.o c_xerbla.o constant.o

ctestl3o_3m = c_cblas3_3m.o c_c3chke_3m.o auxiliary.o c_xerbla.o constant.o

ztestl1o = c_zblas1.o

ztestl2o = c_zblas2.o c_z2chke.o auxiliary.o c_xerbla.o constant.o

ztestl3o = c_zblas3.o c_z3chke.o auxiliary.o c_xerbla.o constant.o

ztestl3o_3m = c_zblas3_3m.o c_z3chke_3m.o auxiliary.o c_xerbla.o constant.o

TEST_LEVEL1 = test_level1.sh
TEST_LEVEL2 = test_level2.sh
TEST_LEVEL3 = test_level3.sh
TEST_LEVEL3_3M = test_level3_3m.sh

all :: all1 all2 all3

all1: xscblat1 xdcblat1 xccblat1 xzcblat1
	@rm -f $(TEST_LEVEL1)
	@touch $(TEST_LEVEL1) && chmod +x $(TEST_LEVEL1)

ifeq ($(USE_OPENMP), 1)
	@echo "OMP_NUM_THREADS=2 ./xscblat1" >> $(TEST_LEVEL1)
	@echo "OMP_NUM_THREADS=2 ./xdcblat1" >> $(TEST_LEVEL1)
	@echo "OMP_NUM_THREADS=2 ./xccblat1" >> $(TEST_LEVEL1)
	@echo "OMP_NUM_THREADS=2 ./xzcblat1" >> $(TEST_LEVEL1)
else
	@echo "OPENBLAS_NUM_THREADS=2 ./xscblat1" >> $(TEST_LEVEL1)
	@echo "OPENBLAS_NUM_THREADS=2 ./xdcblat1" >> $(TEST_LEVEL1)
	@echo "OPENBLAS_NUM_THREADS=2 ./xccblat1" >> $(TEST_LEVEL1)
	@echo "OPENBLAS_NUM_THREADS=2 ./xzcblat1" >> $(TEST_LEVEL1)
endif

ifndef CROSS
	./$(TEST_LEVEL1)
endif

all2: xscblat2 xdcblat2 xccblat2 xzcblat2
	@rm -f $(TEST_LEVEL2)
	@touch $(TEST_LEVEL2) && chmod +x $(TEST_LEVEL2)

ifeq ($(USE_OPENMP), 1)
	@echo "OMP_NUM_THREADS=2 ./xscblat2 < sin2" >> $(TEST_LEVEL2)
	@echo "OMP_NUM_THREADS=2 ./xdcblat2 < din2" >> $(TEST_LEVEL2)
	@echo "OMP_NUM_THREADS=2 ./xccblat2 < cin2" >> $(TEST_LEVEL2)
	@echo "OMP_NUM_THREADS=2 ./xzcblat2 < zin2" >> $(TEST_LEVEL2)
else
	@echo "OPENBLAS_NUM_THREADS=2 ./xscblat2 < sin2" >> $(TEST_LEVEL2)
	@echo "OPENBLAS_NUM_THREADS=2 ./xdcblat2 < din2" >> $(TEST_LEVEL2)
	@echo "OPENBLAS_NUM_THREADS=2 ./xccblat2 < cin2" >> $(TEST_LEVEL2)
	@echo "OPENBLAS_NUM_THREADS=2 ./xzcblat2 < zin2" >> $(TEST_LEVEL2)
endif

ifndef CROSS
	./$(TEST_LEVEL2)
endif

all3: xscblat3 xdcblat3 xccblat3 xzcblat3
	@rm -f $(TEST_LEVEL3)
	@touch $(TEST_LEVEL3) && chmod +x $(TEST_LEVEL3)

ifeq ($(USE_OPENMP), 1)
	@echo "OMP_NUM_THREADS=2 ./xscblat3 < sin3" >> $(TEST_LEVEL3)
	@echo "OMP_NUM_THREADS=2 ./xdcblat3 < din3" >> $(TEST_LEVEL3)
	@echo "OMP_NUM_THREADS=2 ./xccblat3 < cin3" >> $(TEST_LEVEL3)
	@echo "OMP_NUM_THREADS=2 ./xzcblat3 < zin3" >> $(TEST_LEVEL3)
else
	@echo "OPENBLAS_NUM_THREADS=2 ./xscblat3 < sin3" >> $(TEST_LEVEL3)
	@echo "OPENBLAS_NUM_THREADS=2 ./xdcblat3 < din3" >> $(TEST_LEVEL3)
	@echo "OPENBLAS_NUM_THREADS=2 ./xccblat3 < cin3" >> $(TEST_LEVEL3)
	@echo "OPENBLAS_NUM_THREADS=2 ./xzcblat3 < zin3" >> $(TEST_LEVEL3)
endif

ifndef CROSS
	./$(TEST_LEVEL3)
endif

all3_3m: xzcblat3_3m xccblat3_3m
	@rm -f $(TEST_LEVEL3_3M)
	@touch $(TEST_LEVEL3_3M) && chmod +x $(TEST_LEVEL3_3M)

ifeq ($(USE_OPENMP), 1)
	@echo "OMP_NUM_THREADS=2 ./xccblat3_3m < cin3_3m" >> $(TEST_LEVEL3_3M)
	@echo "OMP_NUM_THREADS=2 ./xzcblat3_3m < zin3_3m" >> $(TEST_LEVEL3_3M)
else
	@echo "OPENBLAS_NUM_THREADS=2 ./xccblat3_3m < cin3_3m" >> $(TEST_LEVEL3_3M)
	@echo "OPENBLAS_NUM_THREADS=2 ./xzcblat3_3m < zin3_3m" >> $(TEST_LEVEL3_3M)
endif

ifndef CROSS
	./$(TEST_LEVEL3_3M)
endif




clean ::
	@rm -f x* \
		$(TEST_LEVEL1) $(TEST_LEVEL2) $(TEST_LEVEL3) $(TEST_LEVEL3_3M)

FLDFLAGS = $(FFLAGS:-fPIC=) $(LDFLAGS)
CEXTRALIB =

# Single real
xscblat1: $(stestl1o) c_sblat1.o $(TOPDIR)/$(LIBNAME)
	$(FC) $(FLDFLAGS) -o xscblat1 c_sblat1.o $(stestl1o) $(LIB) $(EXTRALIB) $(CEXTRALIB)
xscblat2: $(stestl2o) c_sblat2.o $(TOPDIR)/$(LIBNAME)
	$(FC) $(FLDFLAGS) -o xscblat2 c_sblat2.o $(stestl2o) $(LIB) $(EXTRALIB) $(CEXTRALIB)
xscblat3: $(stestl3o) c_sblat3.o $(TOPDIR)/$(LIBNAME)
	$(FC) $(FLDFLAGS) -o xscblat3 c_sblat3.o $(stestl3o) $(LIB) $(EXTRALIB) $(CEXTRALIB)
# Double real
xdcblat1: $(dtestl1o) c_dblat1.o $(TOPDIR)/$(LIBNAME)
	$(FC) $(FLDFLAGS) -o xdcblat1 c_dblat1.o $(dtestl1o) $(LIB) $(EXTRALIB) $(CEXTRALIB)
xdcblat2: $(dtestl2o) c_dblat2.o $(TOPDIR)/$(LIBNAME)
	$(FC) $(FLDFLAGS) -o xdcblat2 c_dblat2.o $(dtestl2o) $(LIB) $(EXTRALIB) $(CEXTRALIB)
xdcblat3: $(dtestl3o) c_dblat3.o $(TOPDIR)/$(LIBNAME)
	$(FC) $(FLDFLAGS) -o xdcblat3 c_dblat3.o $(dtestl3o) $(LIB) $(EXTRALIB) $(CEXTRALIB)

# Single complex
xccblat1: $(ctestl1o) c_cblat1.o $(TOPDIR)/$(LIBNAME)
	$(FC) $(FLDFLAGS) -o xccblat1 c_cblat1.o $(ctestl1o) $(LIB) $(EXTRALIB) $(CEXTRALIB)
xccblat2: $(ctestl2o) c_cblat2.o $(TOPDIR)/$(LIBNAME)
	$(FC) $(FLDFLAGS) -o xccblat2 c_cblat2.o $(ctestl2o) $(LIB) $(EXTRALIB) $(CEXTRALIB)
xccblat3: $(ctestl3o) c_cblat3.o $(TOPDIR)/$(LIBNAME)
	$(FC) $(FLDFLAGS) -o xccblat3 c_cblat3.o $(ctestl3o) $(LIB) $(EXTRALIB) $(CEXTRALIB)

xccblat3_3m: $(ctestl3o_3m) c_cblat3_3m.o $(TOPDIR)/$(LIBNAME)
	$(FC) $(FLDFLAGS) -o xccblat3_3m c_cblat3_3m.o $(ctestl3o_3m) $(LIB) $(EXTRALIB) $(CEXTRALIB)

# Double complex
xzcblat1: $(ztestl1o) c_zblat1.o $(TOPDIR)/$(LIBNAME)
	$(FC) $(FLDFLAGS) -o xzcblat1 c_zblat1.o $(ztestl1o) $(LIB) $(EXTRALIB) $(CEXTRALIB)
xzcblat2: $(ztestl2o) c_zblat2.o $(TOPDIR)/$(LIBNAME)
	$(FC) $(FLDFLAGS) -o xzcblat2 c_zblat2.o $(ztestl2o) $(LIB) $(EXTRALIB) $(CEXTRALIB)
xzcblat3: $(ztestl3o) c_zblat3.o $(TOPDIR)/$(LIBNAME)
	$(FC) $(FLDFLAGS) -o xzcblat3 c_zblat3.o $(ztestl3o) $(LIB) $(EXTRALIB) $(CEXTRALIB)


xzcblat3_3m: $(ztestl3o_3m) c_zblat3_3m.o $(TOPDIR)/$(LIBNAME)
	$(FC) $(FLDFLAGS) -o xzcblat3_3m c_zblat3_3m.o $(ztestl3o_3m) $(LIB) $(EXTRALIB) $(CEXTRALIB)


include $(TOPDIR)/Makefile.tail
