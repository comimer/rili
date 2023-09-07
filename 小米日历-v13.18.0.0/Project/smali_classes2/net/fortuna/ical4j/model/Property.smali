.class public abstract Lnet/fortuna/ical4j/model/Property;
.super Lnet/fortuna/ical4j/model/Content;
.source "Property.java"


# static fields
.field public static final ACKNOWLEDGED:Ljava/lang/String; = "ACKNOWLEDGED"

.field public static final ACTION:Ljava/lang/String; = "ACTION"

.field public static final ATTACH:Ljava/lang/String; = "ATTACH"

.field public static final ATTENDEE:Ljava/lang/String; = "ATTENDEE"

.field public static final BUSYTYPE:Ljava/lang/String; = "BUSYTYPE"

.field public static final CALSCALE:Ljava/lang/String; = "CALSCALE"

.field public static final CATEGORIES:Ljava/lang/String; = "CATEGORIES"

.field public static final CLASS:Ljava/lang/String; = "CLASS"

.field public static final COMMENT:Ljava/lang/String; = "COMMENT"

.field public static final COMPLETED:Ljava/lang/String; = "COMPLETED"

.field public static final CONTACT:Ljava/lang/String; = "CONTACT"

.field public static final COUNTRY:Ljava/lang/String; = "COUNTRY"

.field public static final CREATED:Ljava/lang/String; = "CREATED"

.field public static final DESCRIPTION:Ljava/lang/String; = "DESCRIPTION"

.field public static final DTEND:Ljava/lang/String; = "DTEND"

.field public static final DTSTAMP:Ljava/lang/String; = "DTSTAMP"

.field public static final DTSTART:Ljava/lang/String; = "DTSTART"

.field public static final DUE:Ljava/lang/String; = "DUE"

.field public static final DURATION:Ljava/lang/String; = "DURATION"

.field public static final EXDATE:Ljava/lang/String; = "EXDATE"

.field public static final EXPERIMENTAL_PREFIX:Ljava/lang/String; = "X-"

.field public static final EXRULE:Ljava/lang/String; = "EXRULE"

.field public static final EXTENDED_ADDRESS:Ljava/lang/String; = "EXTENDED-ADDRESS"

.field public static final FREEBUSY:Ljava/lang/String; = "FREEBUSY"

.field public static final GEO:Ljava/lang/String; = "GEO"

.field public static final LAST_MODIFIED:Ljava/lang/String; = "LAST-MODIFIED"

.field public static final LOCALITY:Ljava/lang/String; = "LOCALITY"

.field public static final LOCATION:Ljava/lang/String; = "LOCATION"

.field public static final LOCATION_TYPE:Ljava/lang/String; = "LOCATION-TYPE"

.field public static final METHOD:Ljava/lang/String; = "METHOD"

.field public static final NAME:Ljava/lang/String; = "NAME"

.field public static final ORGANIZER:Ljava/lang/String; = "ORGANIZER"

.field public static final PERCENT_COMPLETE:Ljava/lang/String; = "PERCENT-COMPLETE"

.field public static final POSTALCODE:Ljava/lang/String; = "POSTAL-CODE"

.field public static final PRIORITY:Ljava/lang/String; = "PRIORITY"

.field public static final PRODID:Ljava/lang/String; = "PRODID"

.field public static final RDATE:Ljava/lang/String; = "RDATE"

.field public static final RECURRENCE_ID:Ljava/lang/String; = "RECURRENCE-ID"

.field public static final REGION:Ljava/lang/String; = "REGION"

.field public static final RELATED_TO:Ljava/lang/String; = "RELATED-TO"

.field public static final REPEAT:Ljava/lang/String; = "REPEAT"

.field public static final REQUEST_STATUS:Ljava/lang/String; = "REQUEST-STATUS"

.field public static final RESOURCES:Ljava/lang/String; = "RESOURCES"

.field public static final RRULE:Ljava/lang/String; = "RRULE"

.field public static final SEQUENCE:Ljava/lang/String; = "SEQUENCE"

.field public static final STATUS:Ljava/lang/String; = "STATUS"

.field public static final STREET_ADDRESS:Ljava/lang/String; = "STREET-ADDRESS"

.field public static final SUMMARY:Ljava/lang/String; = "SUMMARY"

.field public static final TEL:Ljava/lang/String; = "TEL"

.field public static final TRANSP:Ljava/lang/String; = "TRANSP"

.field public static final TRIGGER:Ljava/lang/String; = "TRIGGER"

.field public static final TZID:Ljava/lang/String; = "TZID"

.field public static final TZNAME:Ljava/lang/String; = "TZNAME"

.field public static final TZOFFSETFROM:Ljava/lang/String; = "TZOFFSETFROM"

.field public static final TZOFFSETTO:Ljava/lang/String; = "TZOFFSETTO"

.field public static final TZURL:Ljava/lang/String; = "TZURL"

.field public static final UID:Ljava/lang/String; = "UID"

.field public static final URL:Ljava/lang/String; = "URL"

.field public static final VERSION:Ljava/lang/String; = "VERSION"

.field private static final serialVersionUID:J = 0x61d2511e8c75386fL


# instance fields
.field private final factory:Lnet/fortuna/ical4j/model/PropertyFactory;

.field private final name:Ljava/lang/String;

.field private final parameters:Lnet/fortuna/ical4j/model/ParameterList;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;Lnet/fortuna/ical4j/model/PropertyFactory;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lnet/fortuna/ical4j/model/Content;-><init>()V

    .line 3
    iput-object p1, p0, Lnet/fortuna/ical4j/model/Property;->name:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lnet/fortuna/ical4j/model/Property;->parameters:Lnet/fortuna/ical4j/model/ParameterList;

    .line 5
    iput-object p3, p0, Lnet/fortuna/ical4j/model/Property;->factory:Lnet/fortuna/ical4j/model/PropertyFactory;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyFactory;)V
    .locals 1

    .line 1
    new-instance v0, Lnet/fortuna/ical4j/model/ParameterList;

    invoke-direct {v0}, Lnet/fortuna/ical4j/model/ParameterList;-><init>()V

    invoke-direct {p0, p1, v0, p2}, Lnet/fortuna/ical4j/model/Property;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    return-void
.end method

.method protected constructor <init>(Lnet/fortuna/ical4j/model/Property;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/URISyntaxException;,
            Ljava/text/ParseException;
        }
    .end annotation

    .line 6
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/Property;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lnet/fortuna/ical4j/model/ParameterList;

    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/Property;->getParameters()Lnet/fortuna/ical4j/model/ParameterList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lnet/fortuna/ical4j/model/ParameterList;-><init>(Lnet/fortuna/ical4j/model/ParameterList;Z)V

    iget-object v2, p1, Lnet/fortuna/ical4j/model/Property;->factory:Lnet/fortuna/ical4j/model/PropertyFactory;

    invoke-direct {p0, v0, v1, v2}, Lnet/fortuna/ical4j/model/Property;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 7
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/Content;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/fortuna/ical4j/model/Property;->setValue(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public copy()Lnet/fortuna/ical4j/model/Property;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/URISyntaxException;,
            Ljava/text/ParseException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/fortuna/ical4j/model/Property;->factory:Lnet/fortuna/ical4j/model/PropertyFactory;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lnet/fortuna/ical4j/model/ParameterList;

    .line 6
    .line 7
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Property;->getParameters()Lnet/fortuna/ical4j/model/ParameterList;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-direct {v0, v1, v2}, Lnet/fortuna/ical4j/model/ParameterList;-><init>(Lnet/fortuna/ical4j/model/ParameterList;Z)V

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lnet/fortuna/ical4j/model/Property;->factory:Lnet/fortuna/ical4j/model/PropertyFactory;

    .line 16
    .line 17
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Content;->getValue()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-interface {v1, v0, v2}, Lnet/fortuna/ical4j/model/PropertyFactory;->createProperty(Lnet/fortuna/ical4j/model/ParameterList;Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    return-object v0

    .line 26
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 27
    .line 28
    const-string v1, "No factory specified"

    .line 29
    .line 30
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw v0
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lnet/fortuna/ical4j/model/Property;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    check-cast p1, Lnet/fortuna/ical4j/model/Property;

    .line 6
    .line 7
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Property;->getName()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/Property;->getName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    new-instance v0, Lorg/apache/commons/lang3/builder/c;

    .line 22
    .line 23
    invoke-direct {v0}, Lorg/apache/commons/lang3/builder/c;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Content;->getValue()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/Content;->getValue()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/c;->g(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/c;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Property;->getParameters()Lnet/fortuna/ical4j/model/ParameterList;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/Property;->getParameters()Lnet/fortuna/ical4j/model/ParameterList;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {v0, v1, p1}, Lorg/apache/commons/lang3/builder/c;->g(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/c;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {p1}, Lorg/apache/commons/lang3/builder/c;->v()Z

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    if-eqz p1, :cond_0

    .line 55
    .line 56
    const/4 p1, 0x1

    .line 57
    goto :goto_0

    .line 58
    :cond_0
    const/4 p1, 0x0

    .line 59
    :goto_0
    return p1

    .line 60
    :cond_1
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    return p1
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/fortuna/ical4j/model/Property;->name:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
.end method

.method public final getParameter(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Parameter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lnet/fortuna/ical4j/model/Parameter;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Property;->getParameters()Lnet/fortuna/ical4j/model/ParameterList;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lnet/fortuna/ical4j/model/ParameterList;->getParameter(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Parameter;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
.end method

.method public final getParameters()Lnet/fortuna/ical4j/model/ParameterList;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/fortuna/ical4j/model/Property;->parameters:Lnet/fortuna/ical4j/model/ParameterList;

    return-object v0
.end method

.method public final getParameters(Ljava/lang/String;)Lnet/fortuna/ical4j/model/ParameterList;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Property;->getParameters()Lnet/fortuna/ical4j/model/ParameterList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/fortuna/ical4j/model/ParameterList;->getParameters(Ljava/lang/String;)Lnet/fortuna/ical4j/model/ParameterList;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    new-instance v0, Lorg/apache/commons/lang3/builder/e;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/apache/commons/lang3/builder/e;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Property;->getName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/e;->g(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/e;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Content;->getValue()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/e;->g(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/e;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Property;->getParameters()Lnet/fortuna/ical4j/model/ParameterList;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/e;->g(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/e;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v0}, Lorg/apache/commons/lang3/builder/e;->t()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    return v0
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
.end method

.method public abstract setValue(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/URISyntaxException;,
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Property;->getName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Property;->getParameters()Lnet/fortuna/ical4j/model/ParameterList;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Property;->getParameters()Lnet/fortuna/ical4j/model/ParameterList;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    :cond_0
    const/16 v1, 0x3a

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const/4 v1, 0x0

    .line 32
    instance-of v2, p0, Lnet/fortuna/ical4j/model/property/XProperty;

    .line 33
    .line 34
    const/4 v3, 0x1

    .line 35
    if-eqz v2, :cond_1

    .line 36
    .line 37
    const-string v2, "VALUE"

    .line 38
    .line 39
    invoke-virtual {p0, v2}, Lnet/fortuna/ical4j/model/Property;->getParameter(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Parameter;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    check-cast v2, Lnet/fortuna/ical4j/model/parameter/Value;

    .line 44
    .line 45
    if-eqz v2, :cond_2

    .line 46
    .line 47
    sget-object v4, Lnet/fortuna/ical4j/model/parameter/Value;->TEXT:Lnet/fortuna/ical4j/model/parameter/Value;

    .line 48
    .line 49
    invoke-virtual {v2, v4}, Lnet/fortuna/ical4j/model/Parameter;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-eqz v2, :cond_3

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    instance-of v2, p0, Lnet/fortuna/ical4j/model/Escapable;

    .line 57
    .line 58
    if-eqz v2, :cond_3

    .line 59
    .line 60
    :cond_2
    :goto_0
    move v1, v3

    .line 61
    :cond_3
    if-eqz v1, :cond_4

    .line 62
    .line 63
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Content;->getValue()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-static {v1}, Lnet/fortuna/ical4j/util/Strings;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-static {v1}, Lnet/fortuna/ical4j/util/Strings;->escape(Ljava/lang/String;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_4
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Content;->getValue()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-static {v1}, Lnet/fortuna/ical4j/util/Strings;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    :goto_1
    const-string v1, "\r\n"

    .line 91
    .line 92
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    return-object v0
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
.end method

.method public abstract validate()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/fortuna/ical4j/validate/ValidationException;
        }
    .end annotation
.end method
