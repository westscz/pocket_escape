# Check Make version (we need at least GNU Make 3.82). Fortunately,
# 'undefine' directive has been introduced exactly in GNU Make 3.82.
ifeq ($(filter undefine,$(value .FEATURES)),)
$(error Unsupported Make version. \
    The build system does not work properly with GNU Make $(MAKE_VERSION), \
    please use GNU Make 3.82 or above.)
endif

.RECIPEPREFIX = >

__all__ =

run:
> python3.9 code/pocket_escape.py

format:
> black .
