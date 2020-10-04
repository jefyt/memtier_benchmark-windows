CXX = g++
LD = $(CXX)

INC =  -I.. -Iinclude -Isrc
CFLAGS =  -Wextra -Wall -g -D_POSIX -DHAVE_CONFIG_H -DWIN32_LEAN_AND_MEAN -D_WIN32_WINNT=0x0600
RESINC =
LIBDIR =
LIB =
LDFLAGS =  -static-libstdc++ -static-libgcc -Wl,-Bstatic -levent -Wl,-Bstatic -levent_openssl -Wl,-Bstatic -lssl -Wl,-Bstatic -lcrypto -Wl,-Bstatic -lz -Wl,-Bstatic -lpthread -Wl,-Bdynamic -lws2_32 -liphlpapi -lbcrypt

INC_DEBUG32 =  $(INC) -I$(LIBEVENT32_DIR)/include -I$(OPENSSL32_DIR)/include -I$(ZLIB32_DIR)
CFLAGS_DEBUG32 =  $(CFLAGS) -m32 -g
RESINC_DEBUG32 =  $(RESINC)
RCFLAGS_DEBUG32 =  $(RCFLAGS)
LIBDIR_DEBUG32 =  $(LIBDIR) -L$(LIBEVENT32_DIR)/lib -L$(OPENSSL32_DIR)/lib -L$(ZLIB32_DIR)
LIB_DEBUG32 = $(LIB)
LDFLAGS_DEBUG32 =  $(LDFLAGS) -m32
OBJDIR_DEBUG32 = obj/Debug32
DEP_DEBUG32 =
OUT_DEBUG32 = bin/Debug32/memtier_benchmark.exe

INC_RELEASE32 =  $(INC) -I$(LIBEVENT32_DIR)/include -I$(OPENSSL32_DIR)/include -I$(ZLIB32_DIR)
CFLAGS_RELEASE32 =  $(CFLAGS) -O2 -m32
RESINC_RELEASE32 =  $(RESINC)
RCFLAGS_RELEASE32 =  $(RCFLAGS)
LIBDIR_RELEASE32 =  $(LIBDIR) -L$(LIBEVENT32_DIR)/lib -L$(OPENSSL32_DIR)/lib -L$(ZLIB32_DIR)
LIB_RELEASE32 = $(LIB)
LDFLAGS_RELEASE32 =  $(LDFLAGS) -s -m32
OBJDIR_RELEASE32 = obj/Release32
DEP_RELEASE32 =
OUT_RELEASE32 = bin/Release32/memtier_benchmark.exe

INC_DEBUG64 =  $(INC) -I$(LIBEVENT64_DIR)/include -I$(OPENSSL64_DIR)/include -I$(ZLIB64_DIR)
CFLAGS_DEBUG64 =  $(CFLAGS) -m64 -g
RESINC_DEBUG64 =  $(RESINC)
RCFLAGS_DEBUG64 =  $(RCFLAGS)
LIBDIR_DEBUG64 =  $(LIBDIR) -L$(LIBEVENT64_DIR)/lib -L$(OPENSSL64_DIR)/lib -L$(ZLIB64_DIR)
LIB_DEBUG64 = $(LIB)
LDFLAGS_DEBUG64 =  $(LDFLAGS) -m64
OBJDIR_DEBUG64 = obj/Debug64
DEP_DEBUG64 =
OUT_DEBUG64 = bin/Debug64/memtier_benchmark.exe

INC_RELEASE64 =  $(INC) -I$(LIBEVENT64_DIR)/include -I$(OPENSSL64_DIR)/include -I$(ZLIB64_DIR)
CFLAGS_RELEASE64 =  $(CFLAGS) -O2 -m64
RESINC_RELEASE64 =  $(RESINC)
RCFLAGS_RELEASE64 =  $(RCFLAGS)
LIBDIR_RELEASE64 =  $(LIBDIR) -L$(LIBEVENT64_DIR)/lib -L$(OPENSSL64_DIR)/lib -L$(ZLIB64_DIR)
LIB_RELEASE64 = $(LIB)
LDFLAGS_RELEASE64 =  $(LDFLAGS) -s -m64
OBJDIR_RELEASE64 = obj/Release64
DEP_RELEASE64 =
OUT_RELEASE64 = bin/Release64/memtier_benchmark.exe

OBJ_DEBUG32 = $(OBJDIR_DEBUG32)/shard_connection.o $(OBJDIR_DEBUG32)/run_stats_types.o $(OBJDIR_DEBUG32)/run_stats.o $(OBJDIR_DEBUG32)/protocol.o $(OBJDIR_DEBUG32)/obj_gen.o $(OBJDIR_DEBUG32)/memtier_benchmark.o $(OBJDIR_DEBUG32)/item.o $(OBJDIR_DEBUG32)/file_io.o $(OBJDIR_DEBUG32)/config_types.o $(OBJDIR_DEBUG32)/cluster_client.o $(OBJDIR_DEBUG32)/client.o $(OBJDIR_DEBUG32)/JSON_handler.o $(OBJDIR_DEBUG32)/deps/hdr_histogram/hdr_encoding.o $(OBJDIR_DEBUG32)/deps/hdr_histogram/hdr_histogram.o $(OBJDIR_DEBUG32)/deps/hdr_histogram/hdr_histogram_log.o $(OBJDIR_DEBUG32)/deps/hdr_histogram/hdr_time.o

OBJ_RELEASE32 = $(OBJDIR_RELEASE32)/shard_connection.o $(OBJDIR_RELEASE32)/run_stats_types.o $(OBJDIR_RELEASE32)/run_stats.o $(OBJDIR_RELEASE32)/protocol.o $(OBJDIR_RELEASE32)/obj_gen.o $(OBJDIR_RELEASE32)/memtier_benchmark.o $(OBJDIR_RELEASE32)/item.o $(OBJDIR_RELEASE32)/file_io.o $(OBJDIR_RELEASE32)/config_types.o $(OBJDIR_RELEASE32)/cluster_client.o $(OBJDIR_RELEASE32)/client.o $(OBJDIR_RELEASE32)/JSON_handler.o $(OBJDIR_RELEASE32)/deps/hdr_histogram/hdr_encoding.o $(OBJDIR_RELEASE32)/deps/hdr_histogram/hdr_histogram.o $(OBJDIR_RELEASE32)/deps/hdr_histogram/hdr_histogram_log.o $(OBJDIR_RELEASE32)/deps/hdr_histogram/hdr_time.o

OBJ_DEBUG64 = $(OBJDIR_DEBUG64)/shard_connection.o $(OBJDIR_DEBUG64)/run_stats_types.o $(OBJDIR_DEBUG64)/run_stats.o $(OBJDIR_DEBUG64)/protocol.o $(OBJDIR_DEBUG64)/obj_gen.o $(OBJDIR_DEBUG64)/memtier_benchmark.o $(OBJDIR_DEBUG64)/item.o $(OBJDIR_DEBUG64)/file_io.o $(OBJDIR_DEBUG64)/config_types.o $(OBJDIR_DEBUG64)/cluster_client.o $(OBJDIR_DEBUG64)/client.o $(OBJDIR_DEBUG64)/JSON_handler.o $(OBJDIR_DEBUG64)/deps/hdr_histogram/hdr_encoding.o $(OBJDIR_DEBUG64)/deps/hdr_histogram/hdr_histogram.o $(OBJDIR_DEBUG64)/deps/hdr_histogram/hdr_histogram_log.o $(OBJDIR_DEBUG64)/deps/hdr_histogram/hdr_time.o

OBJ_RELEASE64 = $(OBJDIR_RELEASE64)/shard_connection.o $(OBJDIR_RELEASE64)/run_stats_types.o $(OBJDIR_RELEASE64)/run_stats.o $(OBJDIR_RELEASE64)/protocol.o $(OBJDIR_RELEASE64)/obj_gen.o $(OBJDIR_RELEASE64)/memtier_benchmark.o $(OBJDIR_RELEASE64)/item.o $(OBJDIR_RELEASE64)/file_io.o $(OBJDIR_RELEASE64)/config_types.o $(OBJDIR_RELEASE64)/cluster_client.o $(OBJDIR_RELEASE64)/client.o $(OBJDIR_RELEASE64)/JSON_handler.o $(OBJDIR_RELEASE64)/deps/hdr_histogram/hdr_encoding.o $(OBJDIR_RELEASE64)/deps/hdr_histogram/hdr_histogram.o $(OBJDIR_RELEASE64)/deps/hdr_histogram/hdr_histogram_log.o $(OBJDIR_RELEASE64)/deps/hdr_histogram/hdr_time.o

64: debug64 release64

32: debug32 release32

all: 64 32

clean: clean_debug32 clean_release32 clean_debug64 clean_release64

before_debug32:
	test -d bin/Debug32 || mkdir -p bin/Debug32
	test -d $(OBJDIR_DEBUG32)/deps/hdr_histogram || mkdir -p $(OBJDIR_DEBUG32)/deps/hdr_histogram

after_debug32:

debug32: before_debug32 out_debug32 after_debug32

out_debug32: before_debug32 $(OBJ_DEBUG32) $(DEP_DEBUG32)
	$(LD) $(LIBDIR_DEBUG32) -o $(OUT_DEBUG32) $(OBJ_DEBUG32)  $(LDFLAGS_DEBUG32) $(LIB_DEBUG32)

$(OBJDIR_DEBUG32)/shard_connection.o: ../shard_connection.cpp
	$(CXX) $(CFLAGS_DEBUG32) $(INC_DEBUG32) -c ../shard_connection.cpp -o $(OBJDIR_DEBUG32)/shard_connection.o

$(OBJDIR_DEBUG32)/run_stats_types.o: ../run_stats_types.cpp
	$(CXX) $(CFLAGS_DEBUG32) $(INC_DEBUG32) -c ../run_stats_types.cpp -o $(OBJDIR_DEBUG32)/run_stats_types.o

$(OBJDIR_DEBUG32)/run_stats.o: ../run_stats.cpp
	$(CXX) $(CFLAGS_DEBUG32) $(INC_DEBUG32) -c ../run_stats.cpp -o $(OBJDIR_DEBUG32)/run_stats.o

$(OBJDIR_DEBUG32)/protocol.o: ../protocol.cpp
	$(CXX) $(CFLAGS_DEBUG32) $(INC_DEBUG32) -c ../protocol.cpp -o $(OBJDIR_DEBUG32)/protocol.o

$(OBJDIR_DEBUG32)/obj_gen.o: ../obj_gen.cpp
	$(CXX) $(CFLAGS_DEBUG32) $(INC_DEBUG32) -c ../obj_gen.cpp -o $(OBJDIR_DEBUG32)/obj_gen.o

$(OBJDIR_DEBUG32)/memtier_benchmark.o: ../memtier_benchmark.cpp
	$(CXX) $(CFLAGS_DEBUG32) $(INC_DEBUG32) -c ../memtier_benchmark.cpp -o $(OBJDIR_DEBUG32)/memtier_benchmark.o

$(OBJDIR_DEBUG32)/item.o: ../item.cpp
	$(CXX) $(CFLAGS_DEBUG32) $(INC_DEBUG32) -c ../item.cpp -o $(OBJDIR_DEBUG32)/item.o

$(OBJDIR_DEBUG32)/file_io.o: ../file_io.cpp
	$(CXX) $(CFLAGS_DEBUG32) $(INC_DEBUG32) -c ../file_io.cpp -o $(OBJDIR_DEBUG32)/file_io.o

$(OBJDIR_DEBUG32)/config_types.o: ../config_types.cpp
	$(CXX) $(CFLAGS_DEBUG32) $(INC_DEBUG32) -c ../config_types.cpp -o $(OBJDIR_DEBUG32)/config_types.o

$(OBJDIR_DEBUG32)/cluster_client.o: ../cluster_client.cpp
	$(CXX) $(CFLAGS_DEBUG32) $(INC_DEBUG32) -c ../cluster_client.cpp -o $(OBJDIR_DEBUG32)/cluster_client.o

$(OBJDIR_DEBUG32)/client.o: ../client.cpp
	$(CXX) $(CFLAGS_DEBUG32) $(INC_DEBUG32) -c ../client.cpp -o $(OBJDIR_DEBUG32)/client.o

$(OBJDIR_DEBUG32)/JSON_handler.o: ../JSON_handler.cpp
	$(CXX) $(CFLAGS_DEBUG32) $(INC_DEBUG32) -c ../JSON_handler.cpp -o $(OBJDIR_DEBUG32)/JSON_handler.o

$(OBJDIR_DEBUG32)/deps/hdr_histogram/hdr_encoding.o: ../deps/hdr_histogram/hdr_encoding.c
	$(CXX) $(CFLAGS_DEBUG32) $(INC_DEBUG32) -c ../deps/hdr_histogram/hdr_encoding.c -o $(OBJDIR_DEBUG32)/deps/hdr_histogram/hdr_encoding.o

$(OBJDIR_DEBUG32)/deps/hdr_histogram/hdr_histogram.o: ../deps/hdr_histogram/hdr_histogram.c
	$(CXX) $(CFLAGS_DEBUG32) $(INC_DEBUG32) -c ../deps/hdr_histogram/hdr_histogram.c -o $(OBJDIR_DEBUG32)/deps/hdr_histogram/hdr_histogram.o

$(OBJDIR_DEBUG32)/deps/hdr_histogram/hdr_histogram_log.o: ../deps/hdr_histogram/hdr_histogram_log.c
	$(CXX) $(CFLAGS_DEBUG32) $(INC_DEBUG32) -c ../deps/hdr_histogram/hdr_histogram_log.c -o $(OBJDIR_DEBUG32)/deps/hdr_histogram/hdr_histogram_log.o

$(OBJDIR_DEBUG32)/deps/hdr_histogram/hdr_time.o: ../deps/hdr_histogram/hdr_time.c
	$(CXX) $(CFLAGS_DEBUG32) $(INC_DEBUG32) -c ../deps/hdr_histogram/hdr_time.c -o $(OBJDIR_DEBUG32)/deps/hdr_histogram/hdr_time.o

clean_debug32:
	rm -f $(OBJ_DEBUG32) $(OUT_DEBUG32)
	rm -rf bin/Debug32
	rm -rf $(OBJDIR_DEBUG32)

before_release32:
	test -d bin/Release32 || mkdir -p bin/Release32
	test -d $(OBJDIR_RELEASE32)/deps/hdr_histogram || mkdir -p $(OBJDIR_RELEASE32)/deps/hdr_histogram

after_release32:

release32: before_release32 out_release32 after_release32

out_release32: before_release32 $(OBJ_RELEASE32) $(DEP_RELEASE32)
	$(LD) $(LIBDIR_RELEASE32) -o $(OUT_RELEASE32) $(OBJ_RELEASE32)  $(LDFLAGS_RELEASE32) $(LIB_RELEASE32)

$(OBJDIR_RELEASE32)/shard_connection.o: ../shard_connection.cpp
	$(CXX) $(CFLAGS_RELEASE32) $(INC_RELEASE32) -c ../shard_connection.cpp -o $(OBJDIR_RELEASE32)/shard_connection.o

$(OBJDIR_RELEASE32)/run_stats_types.o: ../run_stats_types.cpp
	$(CXX) $(CFLAGS_RELEASE32) $(INC_RELEASE32) -c ../run_stats_types.cpp -o $(OBJDIR_RELEASE32)/run_stats_types.o

$(OBJDIR_RELEASE32)/run_stats.o: ../run_stats.cpp
	$(CXX) $(CFLAGS_RELEASE32) $(INC_RELEASE32) -c ../run_stats.cpp -o $(OBJDIR_RELEASE32)/run_stats.o

$(OBJDIR_RELEASE32)/protocol.o: ../protocol.cpp
	$(CXX) $(CFLAGS_RELEASE32) $(INC_RELEASE32) -c ../protocol.cpp -o $(OBJDIR_RELEASE32)/protocol.o

$(OBJDIR_RELEASE32)/obj_gen.o: ../obj_gen.cpp
	$(CXX) $(CFLAGS_RELEASE32) $(INC_RELEASE32) -c ../obj_gen.cpp -o $(OBJDIR_RELEASE32)/obj_gen.o

$(OBJDIR_RELEASE32)/memtier_benchmark.o: ../memtier_benchmark.cpp
	$(CXX) $(CFLAGS_RELEASE32) $(INC_RELEASE32) -c ../memtier_benchmark.cpp -o $(OBJDIR_RELEASE32)/memtier_benchmark.o

$(OBJDIR_RELEASE32)/item.o: ../item.cpp
	$(CXX) $(CFLAGS_RELEASE32) $(INC_RELEASE32) -c ../item.cpp -o $(OBJDIR_RELEASE32)/item.o

$(OBJDIR_RELEASE32)/file_io.o: ../file_io.cpp
	$(CXX) $(CFLAGS_RELEASE32) $(INC_RELEASE32) -c ../file_io.cpp -o $(OBJDIR_RELEASE32)/file_io.o

$(OBJDIR_RELEASE32)/config_types.o: ../config_types.cpp
	$(CXX) $(CFLAGS_RELEASE32) $(INC_RELEASE32) -c ../config_types.cpp -o $(OBJDIR_RELEASE32)/config_types.o

$(OBJDIR_RELEASE32)/cluster_client.o: ../cluster_client.cpp
	$(CXX) $(CFLAGS_RELEASE32) $(INC_RELEASE32) -c ../cluster_client.cpp -o $(OBJDIR_RELEASE32)/cluster_client.o

$(OBJDIR_RELEASE32)/client.o: ../client.cpp
	$(CXX) $(CFLAGS_RELEASE32) $(INC_RELEASE32) -c ../client.cpp -o $(OBJDIR_RELEASE32)/client.o

$(OBJDIR_RELEASE32)/JSON_handler.o: ../JSON_handler.cpp
	$(CXX) $(CFLAGS_RELEASE32) $(INC_RELEASE32) -c ../JSON_handler.cpp -o $(OBJDIR_RELEASE32)/JSON_handler.o

$(OBJDIR_RELEASE32)/deps/hdr_histogram/hdr_encoding.o: ../deps/hdr_histogram/hdr_encoding.c
	$(CXX) $(CFLAGS_RELEASE32) $(INC_RELEASE32) -c ../deps/hdr_histogram/hdr_encoding.c -o $(OBJDIR_RELEASE32)/deps/hdr_histogram/hdr_encoding.o

$(OBJDIR_RELEASE32)/deps/hdr_histogram/hdr_histogram.o: ../deps/hdr_histogram/hdr_histogram.c
	$(CXX) $(CFLAGS_RELEASE32) $(INC_RELEASE32) -c ../deps/hdr_histogram/hdr_histogram.c -o $(OBJDIR_RELEASE32)/deps/hdr_histogram/hdr_histogram.o

$(OBJDIR_RELEASE32)/deps/hdr_histogram/hdr_histogram_log.o: ../deps/hdr_histogram/hdr_histogram_log.c
	$(CXX) $(CFLAGS_RELEASE32) $(INC_RELEASE32) -c ../deps/hdr_histogram/hdr_histogram_log.c -o $(OBJDIR_RELEASE32)/deps/hdr_histogram/hdr_histogram_log.o

$(OBJDIR_RELEASE32)/deps/hdr_histogram/hdr_time.o: ../deps/hdr_histogram/hdr_time.c
	$(CXX) $(CFLAGS_RELEASE32) $(INC_RELEASE32) -c ../deps/hdr_histogram/hdr_time.c -o $(OBJDIR_RELEASE32)/deps/hdr_histogram/hdr_time.o

clean_release32:
	rm -f $(OBJ_RELEASE32) $(OUT_RELEASE32)
	rm -rf bin/Release32
	rm -rf $(OBJDIR_RELEASE32)

before_debug64:
	test -d bin/Debug64 || mkdir -p bin/Debug64
	test -d $(OBJDIR_DEBUG64)/deps/hdr_histogram || mkdir -p $(OBJDIR_DEBUG64)/deps/hdr_histogram

after_debug64:

debug64: before_debug64 out_debug64 after_debug64

out_debug64: before_debug64 $(OBJ_DEBUG64) $(DEP_DEBUG64)
	$(LD) $(LIBDIR_DEBUG64) -o $(OUT_DEBUG64) $(OBJ_DEBUG64)  $(LDFLAGS_DEBUG64) $(LIB_DEBUG64)

$(OBJDIR_DEBUG64)/shard_connection.o: ../shard_connection.cpp
	$(CXX) $(CFLAGS_DEBUG64) $(INC_DEBUG64) -c ../shard_connection.cpp -o $(OBJDIR_DEBUG64)/shard_connection.o

$(OBJDIR_DEBUG64)/run_stats_types.o: ../run_stats_types.cpp
	$(CXX) $(CFLAGS_DEBUG64) $(INC_DEBUG64) -c ../run_stats_types.cpp -o $(OBJDIR_DEBUG64)/run_stats_types.o

$(OBJDIR_DEBUG64)/run_stats.o: ../run_stats.cpp
	$(CXX) $(CFLAGS_DEBUG64) $(INC_DEBUG64) -c ../run_stats.cpp -o $(OBJDIR_DEBUG64)/run_stats.o

$(OBJDIR_DEBUG64)/protocol.o: ../protocol.cpp
	$(CXX) $(CFLAGS_DEBUG64) $(INC_DEBUG64) -c ../protocol.cpp -o $(OBJDIR_DEBUG64)/protocol.o

$(OBJDIR_DEBUG64)/obj_gen.o: ../obj_gen.cpp
	$(CXX) $(CFLAGS_DEBUG64) $(INC_DEBUG64) -c ../obj_gen.cpp -o $(OBJDIR_DEBUG64)/obj_gen.o

$(OBJDIR_DEBUG64)/memtier_benchmark.o: ../memtier_benchmark.cpp
	$(CXX) $(CFLAGS_DEBUG64) $(INC_DEBUG64) -c ../memtier_benchmark.cpp -o $(OBJDIR_DEBUG64)/memtier_benchmark.o

$(OBJDIR_DEBUG64)/item.o: ../item.cpp
	$(CXX) $(CFLAGS_DEBUG64) $(INC_DEBUG64) -c ../item.cpp -o $(OBJDIR_DEBUG64)/item.o

$(OBJDIR_DEBUG64)/file_io.o: ../file_io.cpp
	$(CXX) $(CFLAGS_DEBUG64) $(INC_DEBUG64) -c ../file_io.cpp -o $(OBJDIR_DEBUG64)/file_io.o

$(OBJDIR_DEBUG64)/config_types.o: ../config_types.cpp
	$(CXX) $(CFLAGS_DEBUG64) $(INC_DEBUG64) -c ../config_types.cpp -o $(OBJDIR_DEBUG64)/config_types.o

$(OBJDIR_DEBUG64)/cluster_client.o: ../cluster_client.cpp
	$(CXX) $(CFLAGS_DEBUG64) $(INC_DEBUG64) -c ../cluster_client.cpp -o $(OBJDIR_DEBUG64)/cluster_client.o

$(OBJDIR_DEBUG64)/client.o: ../client.cpp
	$(CXX) $(CFLAGS_DEBUG64) $(INC_DEBUG64) -c ../client.cpp -o $(OBJDIR_DEBUG64)/client.o

$(OBJDIR_DEBUG64)/JSON_handler.o: ../JSON_handler.cpp
	$(CXX) $(CFLAGS_DEBUG64) $(INC_DEBUG64) -c ../JSON_handler.cpp -o $(OBJDIR_DEBUG64)/JSON_handler.o

$(OBJDIR_DEBUG64)/deps/hdr_histogram/hdr_encoding.o: ../deps/hdr_histogram/hdr_encoding.c
	$(CXX) $(CFLAGS_DEBUG64) $(INC_DEBUG64) -c ../deps/hdr_histogram/hdr_encoding.c -o $(OBJDIR_DEBUG64)/deps/hdr_histogram/hdr_encoding.o

$(OBJDIR_DEBUG64)/deps/hdr_histogram/hdr_histogram.o: ../deps/hdr_histogram/hdr_histogram.c
	$(CXX) $(CFLAGS_DEBUG64) $(INC_DEBUG64) -c ../deps/hdr_histogram/hdr_histogram.c -o $(OBJDIR_DEBUG64)/deps/hdr_histogram/hdr_histogram.o

$(OBJDIR_DEBUG64)/deps/hdr_histogram/hdr_histogram_log.o: ../deps/hdr_histogram/hdr_histogram_log.c
	$(CXX) $(CFLAGS_DEBUG64) $(INC_DEBUG64) -c ../deps/hdr_histogram/hdr_histogram_log.c -o $(OBJDIR_DEBUG64)/deps/hdr_histogram/hdr_histogram_log.o

$(OBJDIR_DEBUG64)/deps/hdr_histogram/hdr_time.o: ../deps/hdr_histogram/hdr_time.c
	$(CXX) $(CFLAGS_DEBUG64) $(INC_DEBUG64) -c ../deps/hdr_histogram/hdr_time.c -o $(OBJDIR_DEBUG64)/deps/hdr_histogram/hdr_time.o

clean_debug64:
	rm -f $(OBJ_DEBUG64) $(OUT_DEBUG64)
	rm -rf bin/Debug64
	rm -rf $(OBJDIR_DEBUG64)

before_release64:
	test -d bin/Release64 || mkdir -p bin/Release64
	test -d $(OBJDIR_RELEASE64)/deps/hdr_histogram || mkdir -p $(OBJDIR_RELEASE64)/deps/hdr_histogram

after_release64:

release64: before_release64 out_release64 after_release64

out_release64: before_release64 $(OBJ_RELEASE64) $(DEP_RELEASE64)
	$(LD) $(LIBDIR_RELEASE64) -o $(OUT_RELEASE64) $(OBJ_RELEASE64)  $(LDFLAGS_RELEASE64) $(LIB_RELEASE64)

$(OBJDIR_RELEASE64)/shard_connection.o: ../shard_connection.cpp
	$(CXX) $(CFLAGS_RELEASE64) $(INC_RELEASE64) -c ../shard_connection.cpp -o $(OBJDIR_RELEASE64)/shard_connection.o

$(OBJDIR_RELEASE64)/run_stats_types.o: ../run_stats_types.cpp
	$(CXX) $(CFLAGS_RELEASE64) $(INC_RELEASE64) -c ../run_stats_types.cpp -o $(OBJDIR_RELEASE64)/run_stats_types.o

$(OBJDIR_RELEASE64)/run_stats.o: ../run_stats.cpp
	$(CXX) $(CFLAGS_RELEASE64) $(INC_RELEASE64) -c ../run_stats.cpp -o $(OBJDIR_RELEASE64)/run_stats.o

$(OBJDIR_RELEASE64)/protocol.o: ../protocol.cpp
	$(CXX) $(CFLAGS_RELEASE64) $(INC_RELEASE64) -c ../protocol.cpp -o $(OBJDIR_RELEASE64)/protocol.o

$(OBJDIR_RELEASE64)/obj_gen.o: ../obj_gen.cpp
	$(CXX) $(CFLAGS_RELEASE64) $(INC_RELEASE64) -c ../obj_gen.cpp -o $(OBJDIR_RELEASE64)/obj_gen.o

$(OBJDIR_RELEASE64)/memtier_benchmark.o: ../memtier_benchmark.cpp
	$(CXX) $(CFLAGS_RELEASE64) $(INC_RELEASE64) -c ../memtier_benchmark.cpp -o $(OBJDIR_RELEASE64)/memtier_benchmark.o

$(OBJDIR_RELEASE64)/item.o: ../item.cpp
	$(CXX) $(CFLAGS_RELEASE64) $(INC_RELEASE64) -c ../item.cpp -o $(OBJDIR_RELEASE64)/item.o

$(OBJDIR_RELEASE64)/file_io.o: ../file_io.cpp
	$(CXX) $(CFLAGS_RELEASE64) $(INC_RELEASE64) -c ../file_io.cpp -o $(OBJDIR_RELEASE64)/file_io.o

$(OBJDIR_RELEASE64)/config_types.o: ../config_types.cpp
	$(CXX) $(CFLAGS_RELEASE64) $(INC_RELEASE64) -c ../config_types.cpp -o $(OBJDIR_RELEASE64)/config_types.o

$(OBJDIR_RELEASE64)/cluster_client.o: ../cluster_client.cpp
	$(CXX) $(CFLAGS_RELEASE64) $(INC_RELEASE64) -c ../cluster_client.cpp -o $(OBJDIR_RELEASE64)/cluster_client.o

$(OBJDIR_RELEASE64)/client.o: ../client.cpp
	$(CXX) $(CFLAGS_RELEASE64) $(INC_RELEASE64) -c ../client.cpp -o $(OBJDIR_RELEASE64)/client.o

$(OBJDIR_RELEASE64)/JSON_handler.o: ../JSON_handler.cpp
	$(CXX) $(CFLAGS_RELEASE64) $(INC_RELEASE64) -c ../JSON_handler.cpp -o $(OBJDIR_RELEASE64)/JSON_handler.o

$(OBJDIR_RELEASE64)/deps/hdr_histogram/hdr_encoding.o: ../deps/hdr_histogram/hdr_encoding.c
	$(CXX) $(CFLAGS_RELEASE64) $(INC_RELEASE64) -c ../deps/hdr_histogram/hdr_encoding.c -o $(OBJDIR_RELEASE64)/deps/hdr_histogram/hdr_encoding.o

$(OBJDIR_RELEASE64)/deps/hdr_histogram/hdr_histogram.o: ../deps/hdr_histogram/hdr_histogram.c
	$(CXX) $(CFLAGS_RELEASE64) $(INC_RELEASE64) -c ../deps/hdr_histogram/hdr_histogram.c -o $(OBJDIR_RELEASE64)/deps/hdr_histogram/hdr_histogram.o

$(OBJDIR_RELEASE64)/deps/hdr_histogram/hdr_histogram_log.o: ../deps/hdr_histogram/hdr_histogram_log.c
	$(CXX) $(CFLAGS_RELEASE64) $(INC_RELEASE64) -c ../deps/hdr_histogram/hdr_histogram_log.c -o $(OBJDIR_RELEASE64)/deps/hdr_histogram/hdr_histogram_log.o

$(OBJDIR_RELEASE64)/deps/hdr_histogram/hdr_time.o: ../deps/hdr_histogram/hdr_time.c
	$(CXX) $(CFLAGS_RELEASE64) $(INC_RELEASE64) -c ../deps/hdr_histogram/hdr_time.c -o $(OBJDIR_RELEASE64)/deps/hdr_histogram/hdr_time.o

clean_release64:
	rm -f $(OBJ_RELEASE64) $(OUT_RELEASE64)
	rm -rf bin/Release64
	rm -rf $(OBJDIR_RELEASE64)

.PHONY: before_debug32 after_debug32 clean_debug32 before_release32 after_release32 clean_release32 before_debug64 after_debug64 clean_debug64 before_release64 after_release64 clean_release64
