#!/usr/bin/env python
# -*- coding: utf-8 -*-

##########################################################################
#  
#  Copyright (C) 2011-2016 Dr Adam S. Candy.
#  Dr Adam S. Candy, contact@shingleproject.org
#
#  Shingle
#
#  Generation of boundary representation from arbitrary geophysical
#  fields and initialisation for anisotropic, unstructured meshing.
#  
#  Copyright (C) 2011-2013 Dr Adam S. Candy, adam.candy@imperial.ac.uk
#  
#  This file is part of the Shingle project.
#  
#  Shingle is free software: you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation, either version 3 of the License, or
#  (at your option) any later version.
#  
#  Shingle is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#  
#  You should have received a copy of the GNU General Public License
#  along with Shingle.  If not, see <http://www.gnu.org/licenses/>.
#
##########################################################################

from Universe import universe

def globalsInit(args):
  debug = False
  # Config file ('~/.gaia') format:
  # [general]
  # calendars = https://caldav.server.address/and/path
  # aiyo = ~/path/to/aiyo/tasks/folder/
  # log = /var/log/gaia.log
  # timezone = Europe/London
  # auxlists = wait, grocery, checklist
  # skipweekendlists = work, research
  # 
  # [backup]
  # location = ~/path/to/calendar/backup/folder/,~/path/to/second/calendar/folder/

  universe.call = '' 
  for arg in args:
    if ' ' in arg:
      universe.call = universe.call + ' \'' + arg + '\''
    else:
      universe.call = universe.call + ' ' + arg

  universe.verbose = True
  universe.debug = False
  
  universe.reportcache = ''
  universe.reportline = 0

  #### IMPORT START
  universe.earth_radius = 6.37101e+06
  universe.dx_default = 0.1
  #fileid = 'G'
  universe.fileid = ''
  universe.compound = False
  #compound = True
  universe.more_bsplines = False
  # Interestingly, if the following is true, gmsh generates a nice mesh, but complains (rightly so) on multiple definitions of a physical line id.  If false, the mesh contains extra 1d elements, which need parsing out!
  universe.physical_lines_separate = False
  #### IMPORT END

  universe.input  = '/d/dataset/rtopo/RTopo105b_50S.nc'
  #picklefile = '/d/dataset/rtopo/rtopo.pkl'
  universe.picklefile = ''
  #output = './stereographic_projection.geo'
  universe.output = './shorelines.geo'
  universe.boundaries = []
  universe.boundariestoexclude = []
  universe.dx = universe.dx_default
  universe.region = 'True'
  universe.box = []
  universe.minarea = 0
  universe.extendtolatitude = None
  universe.open = True
  universe.bounding_lat = -50.0
  universe.smooth_data = False
  universe.smooth_degree = 100
  universe.include_iceshelf_ocean_cavities = True
  universe.projection = 'cartesian'
  universe.contourtype = 'iceshelfcavity'
  universe.plotcontour = False
  #call = ' '.join(argv)
  universe.cache = False
  universe.closewithparallels = False
  universe.elementlength = '1.0E5'
  universe.generatemesh = False
  universe.generatemetric = False




#   import ConfigParser
#   def read_config():
#     configfiles = [ '~/.shingle' ]
#     configfile = None
#     for configfileraw in configfiles:
#       configfile = os.path.expanduser(configfileraw)
#       if os.path.exists(configfile): 
#         break
#       configfile = None
#     if configfile is None:
#       error('Configuration file not found, from possibles: ' + ', '.join(configfiles), fatal=True)
#       sys.exit()
#     Config = ConfigParser.ConfigParser()
#     if debug:
#       print 'Read config file:', configfile
#     Config.read(configfile)
#     return Config
# 
#   universe.reportcache = u''
#   universe.verbose = False
#   universe.debug = False
#   universe.errors = ''
#   universe.dry = False
#   universe.bufferreturned = True
#   universe.killed = False
#   universe.calendarcache = dict()
#   universe.calendarctag = dict()
#   universe.calendaraddresstoname = dict()
#   universe.principalurl = ''
#   universe.routine = 60 * 60
#   # Might not be able to write to?  Do a test write?
#   universe.reportline = 0
#   universe.next_char = '➘ '.decode('utf-8')
#   #universe.next_char = '⤥ '.decode('utf-8')
#   #universe.next_char = '-> '
#   universe.holidays = []
#   universe.template = dict()
# 
#   universe.terminal_columns = get_terminal_columns()
# 
#   config = read_config()
#   try:
#     universe.principalurl = config.get('general', 'calendars').strip()
#   except:
#     error('Problem reading principal calendar URL')
#   try:
#     universe.dataroot = os.path.expanduser(config.get('general', 'aiyo').strip()).rstrip('/')+'/'
#   except:
#     error('Problem reading aiyo data root folder')
#   try:
#     universe.logfile = config.get('general', 'log').strip()
#   except:
#     error('Problem reading log file location')
#   try:
#     universe.next_char = config.get('general', 'next_char').strip().decode('utf-8')
#   except:
#     # Not compulsory
#     pass
#     #error('Problem reading next character')
#   try:
#     universe.timezone = pytz.timezone(config.get('general', 'timezone').strip())
#   except:
#     error('Problem reading timezone')
#   try:
#     universe.auxlists = []
#     auxlist = config.get('general', 'auxlists').strip().split(',')
#     if len(auxlist) == 0:
#       error('Problem reading aux lists')
#     for calendar in auxlist:
#       if len(calendar.strip()) == 0: continue
#       universe.auxlists.append(calendar.strip())
#   except:
#     error('Problem reading aux lists')
#   try:
#     universe.category_order = []
#     category_order = config.get('general', 'category_order').strip().split(',')
#     if len(category_order) == 0:
#       error('Problem reading category_order')
#     for calendar in category_order:
#       if len(calendar.strip()) == 0: continue
#       universe.category_order.append(calendar.strip())
#   except:
#     pass
#     #error('Problem reading category_order')
#   try:
#     universe.skipweekendlists = []
#     skipweekendlist = config.get('general', 'skipweekendlists').strip().split(',')
#     if len(skipweekendlist) == 0:
#       error('Problem reading skipweekend lists')
#     for calendar in skipweekendlist:
#       if len(calendar.strip()) == 0: continue
#       universe.skipweekendlists.append(calendar.strip())
#   except:
#     error('Problem reading aux lists')
#   try:
#     universe.backuproot = os.path.expanduser(config.get('backup', 'location').strip()).rstrip('/')+'/'
#   except:
#     error('Problem reading calendar backup location')
#   try:
#     universe.interlude = int(config.get('general', 'interlude').strip())
#   except:
#     error('Problem reading interlude time')
#   try:
#     universe.routine = int(config.get('general', 'routine').strip())
#   except:
#     pass
# 
#   # Holiday
#   try:
#     universe.holiday_words = []
#     holiday_words = config.get('holiday', 'words').strip().split(',')
#     if len(holiday_words) > 0:
#       for word in holiday_words:
#         if len(word.strip()) == 0: continue
#         universe.holiday_words.append(word.strip())
#   except:
#     universe.holiday_words = []
#     pass
# 
#   try:
#     universe.holiday_calendar = config.get('holiday', 'calendar').decode('utf-8').strip()
#   except:
#     universe.holiday_calendar = ''
#     pass
#   #
# 
#   try:
#     universe.backupcalendars = [ universe.principalurl ]
#     backupcalendars = config.get('backup', 'calendars').strip().split(',')
#     if len(backupcalendars) == 0:
#       error('Problem reading backup calendar URLs')
#     for calendar in backupcalendars:
#       if len(calendar) == 0: continue
#       universe.backupcalendars.append(calendar.strip())
#   except:
#     error('Problem reading backup calendar URLs')
#   
#   universe.statefile = universe.dataroot + '.state'
#   
#   if debug:
#     print 'principalurl    ', universe.principalurl
#     print 'dataroot        ', universe.dataroot
#     print 'logfile         ', universe.logfile
#     print 'timezone        ', universe.timezone
#     print 'auxlists        ', universe.auxlists
#     print 'statefile       ', universe.statefile
#     print 'backupcalendars ', universe.backupcalendars
# 
# 
# 
# 
# 
# 
# import sys
# import os
# import subprocess
# import signal
# 
# try:
#   from subprocess import DEVNULL # py3k
# except ImportError:
#   import os
#   DEVNULL = open(os.devnull, 'wb')
# 
# 
# colours_pretty = {
# 'red':'\033[0;31m',
# 'green':'\033[0;32m',
# 'blue':'\033[0;34m',
# 'cyan':'\033[0;36m',
# 'magenta':'\033[0;35m',
# 'brightred':'\033[1;31m',
# 'brightgreen':'\033[1;32m',
# 'brightmagenta':'\033[1;35m',
# 'brightyellow':'\033[1;33m',
# 'brightcyan':'\033[1;36m',
# 'yellow':'\033[0;33m',
# 'bred':'\033[7;31m',
# 'bcyan':'\033[7;36m',
# 'bblue':'\033[7;34m',
# 'bmagenta':'\033[7;35m',
# 'byellow':'\033[7;33;40m',
# 'bgreen':'\033[7;32m',
# 'bwhite':'\033[7;37m',
# 'grey':'\033[1;30m',
# 'fred':'\033[5;31m',
# 'end':'\033[0m'
# }
# 
# 
# 
# 
# def colourset(is_pretty):
#   if is_pretty:
#     universe.colours = colours.pretty
#   else:
#     for colour in universe.colours.keys():
#       universe.colours[colour] = ''
#   return None
# 
# def generate_mono(is_plain):
#   if is_plain:
#     return plain
#   else:
#     return colour
# 
# def graceful(signal, frame):
#   universe.killed = True
#   report('%(red)sKilled! Waiting for process to reach sleep period...%(end)s')
#   return
# 
# def signal_init():
#   signal.signal(signal.SIGINT, graceful)
# 
# 
# def clear_screen():
#   sys.stderr.write("\x1b[2J\x1b[H")
#   sys.stderr.flush()
# 
# def clear_log():
#   f = open(universe.logfile, 'w')
#   f.write(''.encode('utf-8'))
#   f.close()
#   report('%(blue)sLog cleared: %(logfile)s%(end)s', var = {'logfile':universe.logfile})
# 
# def logging():
#   return universe.log is not None
# 
# def report(string, forced=False, noreturn=False, debug=False, routine=False):
#   # routine messages do not get added to consecutive reports, cauing error on multiple reports
#   if debug and not universe.debug: return
#   if (not debug and not routine):
#     # Only change report lines for non-debug messages
#     universe.reportline += 1
#     # Don't include debug messages in repo commits
#     universe.reportcache = universe.reportcache + string + os.linesep
#   if (universe.verbose or forced):
#     if logging():
#       if noreturn:
#         universe.bufferreturned = False
#       else:
#         string = string + os.linesep
#         if not universe.bufferreturned:
#           string = os.linesep + string
#           universe.bufferreturned = True
#       f = open(universe.log, 'ab')
#       # Can cause trouble!
#       f.write(string.encode('utf-8'))
#       f.close()
#     else:
#       if noreturn:
#         universe.bufferreturned = False
#         sys.stdout.write(string.encode('utf-8'))
#         sys.stdout.flush()
#       else: 
#         if not universe.bufferreturned:
#           print ''.encode('utf-8')
#           universe.bufferreturned = True
#         print string.encode('utf-8')
# 
# def error(string, fatal=False):
#   stringexit = ''
#   if fatal:
#     stringexit = ' [FATAL ERROR, exiting]'
#   report(colour.redbright + 'ERROR:' + colour.end + ' ' + colour.red + string + colour.end + colour.redbright + stringexit + colour.end, forced=True)
#   if len(universe.errors) > 0:
#     universe.errors = universe.errors + os.linesep
#   universe.errors = universe.errors + string + stringexit
#   if fatal:
#     sys.exit(1)
# 
# def reporterror(force=False):
#   if len(universe.errors) == 0: return
#   if not force:
#     if universe.prowllast is not None:
#       if universe.prowllast < universe.now - timedelta(minutes = 30):
#         return
#   prowl('ERROR', universe.errors)
#   universe.prowllast = universe.now
#   report(colour.blue + 'Reported errors' + colour.end, forced=True)
#   
# def execute(cmd, stat=False, background=False, env=None, shell=False, showerror=False):
#   if showerror:
#     stderror = subprocess.PIPE
#   else:
#     stderror = DEVNULL
#   s = subprocess.Popen(cmd, stderr=stderror, stdout=subprocess.PIPE, env=env, shell=shell)
#   if background:
#     return ''
#   s.wait()
#   if stat:
#     return [s.returncode, s.communicate()[0]]
#   else:
#     return s.communicate()[0]
# 
# def globals_init():
#   debug = False
#   # Config file ('~/.gaia') format:
#   # [general]
#   # calendars = https://caldav.server.address/and/path
#   # aiyo = ~/path/to/aiyo/tasks/folder/
#   # log = /var/log/gaia.log
#   # timezone = Europe/London
#   # auxlists = wait, grocery, checklist
#   # skipweekendlists = work, research
#   # 
#   # [backup]
#   # location = ~/path/to/calendar/backup/folder/,~/path/to/second/calendar/folder/
# 
#   import ConfigParser
#   def read_config():
#     configfiles = [ '~/.shingle' ]
#     configfile = None
#     for configfileraw in configfiles:
#       configfile = os.path.expanduser(configfileraw)
#       if os.path.exists(configfile): 
#         break
#       configfile = None
#     if configfile is None:
#       error('Configuration file not found, from possibles: ' + ', '.join(configfiles), fatal=True)
#       sys.exit()
#     Config = ConfigParser.ConfigParser()
#     if debug:
#       print 'Read config file:', configfile
#     Config.read(configfile)
#     return Config
# 
#   universe.reportcache = u''
#   universe.verbose = False
#   universe.debug = False
#   universe.errors = ''
#   universe.dry = False
#   universe.bufferreturned = True
#   universe.killed = False
#   universe.calendarcache = dict()
#   universe.calendarctag = dict()
#   universe.calendaraddresstoname = dict()
#   universe.principalurl = ''
#   universe.routine = 60 * 60
#   # Might not be able to write to?  Do a test write?
#   universe.reportline = 0
#   universe.next_char = '➘ '.decode('utf-8')
#   #universe.next_char = '⤥ '.decode('utf-8')
#   #universe.next_char = '-> '
#   universe.holidays = []
#   universe.template = dict()
# 
#   universe.terminal_columns = get_terminal_columns()
# 
#   config = read_config()
#   try:
#     universe.principalurl = config.get('general', 'calendars').strip()
#   except:
#     error('Problem reading principal calendar URL')
#   try:
#     universe.dataroot = os.path.expanduser(config.get('general', 'aiyo').strip()).rstrip('/')+'/'
#   except:
#     error('Problem reading aiyo data root folder')
#   try:
#     universe.logfile = config.get('general', 'log').strip()
#   except:
#     error('Problem reading log file location')
#   try:
#     universe.next_char = config.get('general', 'next_char').strip().decode('utf-8')
#   except:
#     # Not compulsory
#     pass
#     #error('Problem reading next character')
#   try:
#     universe.timezone = pytz.timezone(config.get('general', 'timezone').strip())
#   except:
#     error('Problem reading timezone')
#   try:
#     universe.auxlists = []
#     auxlist = config.get('general', 'auxlists').strip().split(',')
#     if len(auxlist) == 0:
#       error('Problem reading aux lists')
#     for calendar in auxlist:
#       if len(calendar.strip()) == 0: continue
#       universe.auxlists.append(calendar.strip())
#   except:
#     error('Problem reading aux lists')
#   try:
#     universe.category_order = []
#     category_order = config.get('general', 'category_order').strip().split(',')
#     if len(category_order) == 0:
#       error('Problem reading category_order')
#     for calendar in category_order:
#       if len(calendar.strip()) == 0: continue
#       universe.category_order.append(calendar.strip())
#   except:
#     pass
#     #error('Problem reading category_order')
#   try:
#     universe.skipweekendlists = []
#     skipweekendlist = config.get('general', 'skipweekendlists').strip().split(',')
#     if len(skipweekendlist) == 0:
#       error('Problem reading skipweekend lists')
#     for calendar in skipweekendlist:
#       if len(calendar.strip()) == 0: continue
#       universe.skipweekendlists.append(calendar.strip())
#   except:
#     error('Problem reading aux lists')
#   try:
#     universe.backuproot = os.path.expanduser(config.get('backup', 'location').strip()).rstrip('/')+'/'
#   except:
#     error('Problem reading calendar backup location')
#   try:
#     universe.interlude = int(config.get('general', 'interlude').strip())
#   except:
#     error('Problem reading interlude time')
#   try:
#     universe.routine = int(config.get('general', 'routine').strip())
#   except:
#     pass
# 
#   # Holiday
#   try:
#     universe.holiday_words = []
#     holiday_words = config.get('holiday', 'words').strip().split(',')
#     if len(holiday_words) > 0:
#       for word in holiday_words:
#         if len(word.strip()) == 0: continue
#         universe.holiday_words.append(word.strip())
#   except:
#     universe.holiday_words = []
#     pass
# 
#   try:
#     universe.holiday_calendar = config.get('holiday', 'calendar').decode('utf-8').strip()
#   except:
#     universe.holiday_calendar = ''
#     pass
#   #
# 
#   try:
#     universe.backupcalendars = [ universe.principalurl ]
#     backupcalendars = config.get('backup', 'calendars').strip().split(',')
#     if len(backupcalendars) == 0:
#       error('Problem reading backup calendar URLs')
#     for calendar in backupcalendars:
#       if len(calendar) == 0: continue
#       universe.backupcalendars.append(calendar.strip())
#   except:
#     error('Problem reading backup calendar URLs')
#   
#   universe.statefile = universe.dataroot + '.state'
#   
#   if debug:
#     print 'principalurl    ', universe.principalurl
#     print 'dataroot        ', universe.dataroot
#     print 'logfile         ', universe.logfile
#     print 'timezone        ', universe.timezone
#     print 'auxlists        ', universe.auxlists
#     print 'statefile       ', universe.statefile
#     print 'backupcalendars ', universe.backupcalendars
# 
# def tail(filename):
#   signal_init()
#   import time
#   def follow(thefile):
#     thefile.seek(0,2)      # Go to the end of the file
#     while True:
#       line = thefile.readline().decode('utf-8')
#       if not line:
#         time.sleep(0.1)    # Sleep briefly
#         if universe.killed: break
#         continue
#       yield line
# 
#   if not os.path.exists(filename):
#     error('Log file not found', fatal=True)
#   try:
#     logfile = open(filename)
#     #line = colour.grey + logfile.read().decode('utf-8') + colour.end
#     # Limit to last 50 lines:
#     line = colour.grey + '\n'.join(logfile.read().splitlines()[-50:]).decode('utf-8') + colour.end + '\n'
#     sys.stdout.write(line.encode('utf-8'))
#     sys.stdout.flush()
#   except:
#     error('Problem reading log', fatal=True)
#   loglines = follow(logfile)
#   for line in loglines:
#     sys.stdout.write(line.encode('utf-8'))
#     sys.stdout.flush()
#   print ''




