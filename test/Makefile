TOPDIR	= ..
include ../Makefile.system

TEST_LEVEL1 = test_level1.sh
TEST_LEVEL2 = test_level2.sh
TEST_LEVEL3 = test_level3.sh
TEST_LEVEL3_3M = test_level3_3m.sh

all :: level1 level2 level3

level1 : sblat1 dblat1 cblat1 zblat1
	@rm -f $(TEST_LEVEL1)
	@touch $(TEST_LEVEL1) && chmod +x $(TEST_LEVEL1)

	@echo "OPENBLAS_NUM_THREADS=1 OMP_NUM_THREADS=1 ./sblat1" >> $(TEST_LEVEL1)
	@echo "OPENBLAS_NUM_THREADS=1 OMP_NUM_THREADS=1 ./dblat1" >> $(TEST_LEVEL1)
	@echo "OPENBLAS_NUM_THREADS=1 OMP_NUM_THREADS=1 ./cblat1" >> $(TEST_LEVEL1)
	@echo "OPENBLAS_NUM_THREADS=1 OMP_NUM_THREADS=1 ./zblat1" >> $(TEST_LEVEL1)
ifdef SMP
ifeq ($(USE_OPENMP), 1)
	@echo "OMP_NUM_THREADS=2 ./sblat1" >> $(TEST_LEVEL1)
	@echo "OMP_NUM_THREADS=2 ./dblat1" >> $(TEST_LEVEL1)
	@echo "OMP_NUM_THREADS=2 ./cblat1" >> $(TEST_LEVEL1)
	@echo "OMP_NUM_THREADS=2 ./zblat1" >> $(TEST_LEVEL1)
else
	@echo "OPENBLAS_NUM_THREADS=2 ./sblat1" >> $(TEST_LEVEL1)
	@echo "OPENBLAS_NUM_THREADS=2 ./dblat1" >> $(TEST_LEVEL1)
	@echo "OPENBLAS_NUM_THREADS=2 ./cblat1" >> $(TEST_LEVEL1)
	@echo "OPENBLAS_NUM_THREADS=2 ./zblat1" >> $(TEST_LEVEL1)
endif
endif

ifndef CROSS
	./$(TEST_LEVEL1)
endif

level2 : sblat2 dblat2 cblat2 zblat2
	@rm -f $(TEST_LEVEL2)
	@touch $(TEST_LEVEL2) && chmod +x $(TEST_LEVEL2)

	@echo "rm -f ?BLAT2.SUMM" >> $(TEST_LEVEL2)
	@echo "OPENBLAS_NUM_THREADS=1 OMP_NUM_THREADS=1 ./sblat2 < ./sblat2.dat" >> $(TEST_LEVEL2)
	@echo "@$(GREP) -q FATAL SBLAT2.SUMM && cat SBLAT2.SUMM || exit 0" >> $(TEST_LEVEL2)
	@echo "OPENBLAS_NUM_THREADS=1 OMP_NUM_THREADS=1 ./dblat2 < ./dblat2.dat" >> $(TEST_LEVEL2)
	@echo "@$(GREP) -q FATAL DBLAT2.SUMM && cat DBLAT2.SUMM || exit 0" >> $(TEST_LEVEL2)
	@echo "OPENBLAS_NUM_THREADS=1 OMP_NUM_THREADS=1 ./cblat2 < ./cblat2.dat" >> $(TEST_LEVEL2)
	@echo "@$(GREP) -q FATAL CBLAT2.SUMM && cat CBLAT2.SUMM || exit 0" >> $(TEST_LEVEL2)
	@echo "OPENBLAS_NUM_THREADS=1 OMP_NUM_THREADS=1 ./zblat2 < ./zblat2.dat" >> $(TEST_LEVEL2)
	@echo "@$(GREP) -q FATAL ZBLAT2.SUMM && cat ZBLAT2.SUMM || exit 0" >> $(TEST_LEVEL2)
ifdef SMP
	@echo "rm -f ?BLAT2.SUMM" >> $(TEST_LEVEL2)
ifeq ($(USE_OPENMP), 1)
	@echo "OMP_NUM_THREADS=2 ./sblat2 < ./sblat2.dat" >> $(TEST_LEVEL2)
	@echo "@$(GREP) -q FATAL SBLAT2.SUMM && cat SBLAT2.SUMM || exit 0" >> $(TEST_LEVEL2)
	@echo "OMP_NUM_THREADS=2 ./dblat2 < ./dblat2.dat" >> $(TEST_LEVEL2)
	@echo "@$(GREP) -q FATAL DBLAT2.SUMM && cat DBLAT2.SUMM || exit 0" >> $(TEST_LEVEL2)
	@echo "OMP_NUM_THREADS=2 ./cblat2 < ./cblat2.dat" >> $(TEST_LEVEL2)
	@echo "@$(GREP) -q FATAL CBLAT2.SUMM && cat CBLAT2.SUMM || exit 0" >> $(TEST_LEVEL2)
	@echo "OMP_NUM_THREADS=2 ./zblat2 < ./zblat2.dat" >> $(TEST_LEVEL2)
	@echo "@$(GREP) -q FATAL ZBLAT2.SUMM && cat ZBLAT2.SUMM || exit 0" >> $(TEST_LEVEL2)
else
	@echo "OPENBLAS_NUM_THREADS=2 ./sblat2 < ./sblat2.dat" >> $(TEST_LEVEL2)
	@echo "@$(GREP) -q FATAL SBLAT2.SUMM && cat SBLAT2.SUMM || exit 0" >> $(TEST_LEVEL2)
	@echo "OPENBLAS_NUM_THREADS=2 ./dblat2 < ./dblat2.dat" >> $(TEST_LEVEL2)
	@echo "@$(GREP) -q FATAL DBLAT2.SUMM && cat DBLAT2.SUMM || exit 0" >> $(TEST_LEVEL2)
	@echo "OPENBLAS_NUM_THREADS=2 ./cblat2 < ./cblat2.dat" >> $(TEST_LEVEL2)
	@echo "@$(GREP) -q FATAL CBLAT2.SUMM && cat CBLAT2.SUMM || exit 0" >> $(TEST_LEVEL2)
	@echo "OPENBLAS_NUM_THREADS=2 ./zblat2 < ./zblat2.dat" >> $(TEST_LEVEL2)
	@echo "@$(GREP) -q FATAL ZBLAT2.SUMM && cat ZBLAT2.SUMM || exit 0" >> $(TEST_LEVEL2)
endif
endif

ifndef CROSS
	./$(TEST_LEVEL2)
endif

level3 : sblat3 dblat3 cblat3 zblat3
	@rm -f $(TEST_LEVEL3)
	@touch $(TEST_LEVEL3) && chmod +x $(TEST_LEVEL3)

	@echo "rm -f ?BLAT3.SUMM" >> $(TEST_LEVEL3)
	@echo "OPENBLAS_NUM_THREADS=1 OMP_NUM_THREADS=1 ./sblat3 < ./sblat3.dat" >> $(TEST_LEVEL3)
	@echo "@$(GREP) -q FATAL SBLAT3.SUMM && cat SBLAT3.SUMM || exit 0" >> $(TEST_LEVEL3)
	@echo "OPENBLAS_NUM_THREADS=1 OMP_NUM_THREADS=1 ./dblat3 < ./dblat3.dat" >> $(TEST_LEVEL3)
	@echo "@$(GREP) -q FATAL DBLAT3.SUMM && cat DBLAT3.SUMM || exit 0" >> $(TEST_LEVEL3)
	@echo "OPENBLAS_NUM_THREADS=1 OMP_NUM_THREADS=1 ./cblat3 < ./cblat3.dat" >> $(TEST_LEVEL3)
	@echo "@$(GREP) -q FATAL CBLAT3.SUMM && cat CBLAT3.SUMM || exit 0" >> $(TEST_LEVEL3)
	@echo "OPENBLAS_NUM_THREADS=1 OMP_NUM_THREADS=1 ./zblat3 < ./zblat3.dat" >> $(TEST_LEVEL3)
	@echo "@$(GREP) -q FATAL ZBLAT3.SUMM && cat ZBLAT3.SUMM || exit 0" >> $(TEST_LEVEL3)
ifdef SMP
	@echo "rm -f ?BLAT3.SUMM" >> $(TEST_LEVEL3)
ifeq ($(USE_OPENMP), 1)
	@echo "OMP_NUM_THREADS=2 ./sblat3 < ./sblat3.dat" >> $(TEST_LEVEL3)
	@echo "@$(GREP) -q FATAL SBLAT3.SUMM && cat SBLAT3.SUMM || exit 0" >> $(TEST_LEVEL3)
	@echo "OMP_NUM_THREADS=2 ./dblat3 < ./dblat3.dat" >> $(TEST_LEVEL3)
	@echo "@$(GREP) -q FATAL DBLAT3.SUMM && cat DBLAT3.SUMM || exit 0" >> $(TEST_LEVEL3)
	@echo "OMP_NUM_THREADS=2 ./cblat3 < ./cblat3.dat" >> $(TEST_LEVEL3)
	@echo "@$(GREP) -q FATAL CBLAT3.SUMM && cat CBLAT3.SUMM || exit 0" >> $(TEST_LEVEL3)
	@echo "OMP_NUM_THREADS=2 ./zblat3 < ./zblat3.dat" >> $(TEST_LEVEL3)
	@echo "@$(GREP) -q FATAL ZBLAT3.SUMM && cat ZBLAT3.SUMM || exit 0" >> $(TEST_LEVEL3)
else
	@echo "OPENBLAS_NUM_THREADS=2 ./sblat3 < ./sblat3.dat" >> $(TEST_LEVEL3)
	@echo "@$(GREP) -q FATAL SBLAT3.SUMM && cat SBLAT3.SUMM || exit 0" >> $(TEST_LEVEL3)
	@echo "OPENBLAS_NUM_THREADS=2 ./dblat3 < ./dblat3.dat" >> $(TEST_LEVEL3)
	@echo "@$(GREP) -q FATAL DBLAT3.SUMM && cat DBLAT3.SUMM || exit 0" >> $(TEST_LEVEL3)
	@echo "OPENBLAS_NUM_THREADS=2 ./cblat3 < ./cblat3.dat" >> $(TEST_LEVEL3)
	@echo "@$(GREP) -q FATAL CBLAT3.SUMM && cat CBLAT3.SUMM || exit 0" >> $(TEST_LEVEL3)
	@echo "OPENBLAS_NUM_THREADS=2 ./zblat3 < ./zblat3.dat" >> $(TEST_LEVEL3)
	@echo "@$(GREP) -q FATAL ZBLAT3.SUMM && cat ZBLAT3.SUMM || exit 0" >> $(TEST_LEVEL3)
endif
endif

ifndef CROSS
	./$(TEST_LEVEL3)
endif


level3_3m : zblat3_3m cblat3_3m
	@rm -f $(TEST_LEVEL3_3M)
	@touch $(TEST_LEVEL3_3M) && chmod +x $(TEST_LEVEL3_3M)

	@echo "rm -f ?BLAT3_3M.SUMM" >> $(TEST_LEVEL3_3M)
	@echo "OPENBLAS_NUM_THREADS=1 OMP_NUM_THREADS=1 ./cblat3_3m < ./cblat3_3m.dat" >> $(TEST_LEVEL3_3M)
	@echo "@$(GREP) -q FATAL CBLAT3_3M.SUMM && cat CBLAT3_3M.SUMM || exit 0" >> $(TEST_LEVEL3_3M)
	@echo "OPENBLAS_NUM_THREADS=1 OMP_NUM_THREADS=1 ./zblat3_3m < ./zblat3_3m.dat" >> $(TEST_LEVEL3_3M)
	@echo "@$(GREP) -q FATAL ZBLAT3_3M.SUMM && cat ZBLAT3_3M.SUMM || exit 0" >> $(TEST_LEVEL3_3M)
ifdef SMP
	@echo "rm -f ?BLAT3_3M.SUMM" >> $(TEST_LEVEL3_3M)
ifeq ($(USE_OPENMP), 1)
	@echo "OMP_NUM_THREADS=2 ./cblat3_3m < ./cblat3_3m.dat" >> $(TEST_LEVEL3_3M)
	@echo "@$(GREP) -q FATAL CBLAT3_3M.SUMM && cat CBLAT3_3M.SUMM || exit 0" >> $(TEST_LEVEL3_3M)
	@echo "OMP_NUM_THREADS=2 ./zblat3_3m < ./zblat3_3m.dat" >> $(TEST_LEVEL3_3M)
	@echo "@$(GREP) -q FATAL ZBLAT3_3M.SUMM && cat ZBLAT3_3M.SUMM || exit 0" >> $(TEST_LEVEL3_3M)
else
	@echo "OPENBLAS_NUM_THREADS=2 ./cblat3_3m < ./cblat3_3m.dat" >> $(TEST_LEVEL3_3M)
	@echo "@$(GREP) -q FATAL CBLAT3_3M.SUMM && cat CBLAT3_3M.SUMM || exit 0" >> $(TEST_LEVEL3_3M)
	@echo "OPENBLAS_NUM_THREADS=2 ./zblat3_3m < ./zblat3_3m.dat" >> $(TEST_LEVEL3_3M)
	@echo "@$(GREP) -q FATAL ZBLAT3_3M.SUMM && cat ZBLAT3_3M.SUMM || exit 0" >> $(TEST_LEVEL3_3M)
endif
endif

ifndef CROSS
	./$(TEST_LEVEL3_3M)
endif




FLDFLAGS = $(FFLAGS:-fPIC=) $(LDFLAGS)
CEXTRALIB =


sblat1 : sblat1.$(SUFFIX) ../$(LIBNAME)
	$(FC) $(FLDFLAGS) -o sblat1 sblat1.$(SUFFIX) ../$(LIBNAME) $(EXTRALIB) $(CEXTRALIB)

dblat1 : dblat1.$(SUFFIX) ../$(LIBNAME)
	$(FC) $(FLDFLAGS) -o dblat1 dblat1.$(SUFFIX) ../$(LIBNAME) $(EXTRALIB) $(CEXTRALIB)

qblat1 : qblat1.$(SUFFIX) ../$(LIBNAME)
	$(FC) $(FLDFLAGS) -o qblat1 qblat1.$(SUFFIX) ../$(LIBNAME) $(EXTRALIB) $(CEXTRALIB)

cblat1 : cblat1.$(SUFFIX) ../$(LIBNAME)
	$(FC) $(FLDFLAGS) -o cblat1 cblat1.$(SUFFIX) ../$(LIBNAME) $(EXTRALIB) $(CEXTRALIB)

zblat1 : zblat1.$(SUFFIX) ../$(LIBNAME)
	$(FC) $(FLDFLAGS) -o zblat1 zblat1.$(SUFFIX) ../$(LIBNAME) $(EXTRALIB) $(CEXTRALIB)

sblat2 : sblat2.$(SUFFIX) ../$(LIBNAME)
	$(FC) $(FLDFLAGS) -o sblat2 sblat2.$(SUFFIX) ../$(LIBNAME) $(EXTRALIB) $(CEXTRALIB)

dblat2 : dblat2.$(SUFFIX) ../$(LIBNAME)
	$(FC) $(FLDFLAGS) -o dblat2 dblat2.$(SUFFIX) ../$(LIBNAME) $(EXTRALIB) $(CEXTRALIB)

cblat2 : cblat2.$(SUFFIX) ../$(LIBNAME)
	$(FC) $(FLDFLAGS) -o cblat2 cblat2.$(SUFFIX) ../$(LIBNAME) $(EXTRALIB) $(CEXTRALIB)

zblat2 : zblat2.$(SUFFIX) ../$(LIBNAME)
	$(FC) $(FLDFLAGS) -o zblat2 zblat2.$(SUFFIX) ../$(LIBNAME) $(EXTRALIB) $(CEXTRALIB)

sblat3 : sblat3.$(SUFFIX) ../$(LIBNAME)
	$(FC) $(FLDFLAGS) -o sblat3 sblat3.$(SUFFIX) ../$(LIBNAME) $(EXTRALIB) $(CEXTRALIB)

dblat3 : dblat3.$(SUFFIX) ../$(LIBNAME)
	$(FC) $(FLDFLAGS) -o dblat3 dblat3.$(SUFFIX) ../$(LIBNAME) $(EXTRALIB) $(CEXTRALIB)

cblat3 : cblat3.$(SUFFIX) ../$(LIBNAME)
	$(FC) $(FLDFLAGS) -o cblat3 cblat3.$(SUFFIX) ../$(LIBNAME) $(EXTRALIB) $(CEXTRALIB)

zblat3 : zblat3.$(SUFFIX) ../$(LIBNAME)
	$(FC) $(FLDFLAGS) -o zblat3 zblat3.$(SUFFIX) ../$(LIBNAME) $(EXTRALIB) $(CEXTRALIB)

cblat3_3m : cblat3_3m.$(SUFFIX) ../$(LIBNAME)
	$(FC) $(FLDFLAGS) -o cblat3_3m cblat3_3m.$(SUFFIX) ../$(LIBNAME) $(EXTRALIB) $(CEXTRALIB)

zblat3_3m : zblat3_3m.$(SUFFIX) ../$(LIBNAME)
	$(FC) $(FLDFLAGS) -o zblat3_3m zblat3_3m.$(SUFFIX) ../$(LIBNAME) $(EXTRALIB) $(CEXTRALIB)




clean:
	@rm -f *.$(SUFFIX) *.$(PSUFFIX) gmon.$(SUFFIX)ut *.SUMM *.cxml *.exe *.pdb *.dwf \
	sblat1 dblat1 cblat1 zblat1 \
	sblat2 dblat2 cblat2 zblat2 \
	sblat3 dblat3 cblat3 zblat3 \
	sblat1p dblat1p cblat1p zblat1p \
	sblat2p dblat2p cblat2p zblat2p \
	sblat3p dblat3p cblat3p zblat3p \
	zblat3_3m zblat3_3mp \
	cblat3_3m cblat3_3mp \
	*.stackdump *.dll \
	$(TEST_LEVEL1) $(TEST_LEVEL2) $(TEST_LEVEL3) $(TEST_LEVEL3_3M)

libs:

prof:

quick :
	$(MAKE) -C $(TOPDIR) libs

# include ../Makefile.tail
