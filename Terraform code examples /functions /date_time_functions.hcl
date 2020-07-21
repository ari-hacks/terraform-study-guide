#######
#Date and Time Functions 
#######

#formatdate converts a timestamp into a different time format.
formatdate("DD MMM YYYY hh:mm ZZZ", "2018-01-02T23:12:01Z")
#02 Jan 2018 23:12 UTC
formatdate("EEEE, DD-MMM-YY hh:mm:ss ZZZ", "2018-01-02T23:12:01Z")
#Tuesday, 02-Jan-18 23:12:01 UTC
formatdate("EEE, DD MMM YYYY hh:mm:ss ZZZ", "2018-01-02T23:12:01-08:00")
#Tue, 02 Jan 2018 23:12:01 -0800
formatdate("MMM DD, YYYY", "2018-01-02T23:12:01Z")
#Jan 02, 2018
formatdate("HH:mmaa", "2018-01-02T23:12:01Z")
#11:12pm

#timeadd adds a duration to a timestamp, returning a new timestamp.
timeadd(timestamp, duration)
timeadd("2017-11-22T00:00:00Z", "10m")
#2017-11-22T00:10:00Z

#timestamp returns the current date and time.
 timestamp()
#2018-05-13T07:44:12Z

