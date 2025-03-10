# Launchers File syntax:
#
# [Must-have property line] 
# launcher1.runCommand=<Run Command>
# [Optional extra properties] 
# launcher1.displayName=<Display Name, runCommand by default>
# launcher1.buildCommand=<Build Command, Build Command specified in project properties by default>
# launcher1.runDir=<Run Directory, ${PROJECT_DIR} by default>
# launcher1.symbolFiles=<Symbol Files loaded by debugger, ${OUTPUT_PATH} by default>
# launcher1.env.<Environment variable KEY>=<Environment variable VALUE>
# (If this value is quoted with ` it is handled as a native command which execution result will become the value)
# [Common launcher properties]
# common.runDir=<Run Directory>
# (This value is overwritten by a launcher specific runDir value if the latter exists)
# common.env.<Environment variable KEY>=<Environment variable VALUE>
# (Environment variables from common launcher are merged with launcher specific variables)
# common.symbolFiles=<Symbol Files loaded by debugger>
# (This value is overwritten by a launcher specific symbolFiles value if the latter exists)
#
# In runDir, symbolFiles and env fields you can use these macros:
# ${PROJECT_DIR}    -   project directory absolute path
# ${OUTPUT_PATH}    -   linker output path (relative to project directory path)
# ${OUTPUT_BASENAME}-   linker output filename
# ${TESTDIR}        -   test files directory (relative to project directory path)
# ${OBJECTDIR}      -   object files directory (relative to project directory path)
# ${CND_DISTDIR}    -   distribution directory (relative to project directory path)
# ${CND_BUILDDIR}   -   build directory (relative to project directory path)
# ${CND_PLATFORM}   -   platform name
# ${CND_CONF}       -   configuration name
# ${CND_DLIB_EXT}   -   dynamic library extension
#
# All the project launchers must be listed in the file!
#
# launcher1.runCommand=...
# launcher2.runCommand=...
# ...
# common.runDir=...
# common.env.KEY=VALUE

# launcher1.runCommand=<type your run command here>