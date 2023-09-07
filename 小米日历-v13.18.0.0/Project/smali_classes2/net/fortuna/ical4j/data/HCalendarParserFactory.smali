.class public Lnet/fortuna/ical4j/data/HCalendarParserFactory;
.super Lnet/fortuna/ical4j/data/CalendarParserFactory;
.source "HCalendarParserFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lnet/fortuna/ical4j/data/CalendarParserFactory;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
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


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lnet/fortuna/ical4j/data/HCalendarParserFactory;->get()Lnet/fortuna/ical4j/data/CalendarParser;

    move-result-object v0

    return-object v0
.end method

.method public get()Lnet/fortuna/ical4j/data/CalendarParser;
    .locals 1

    .line 2
    new-instance v0, Lnet/fortuna/ical4j/data/HCalendarParser;

    invoke-direct {v0}, Lnet/fortuna/ical4j/data/HCalendarParser;-><init>()V

    return-object v0
.end method
