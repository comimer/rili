.class public Lnet/fortuna/ical4j/model/property/RecurrenceId;
.super Lnet/fortuna/ical4j/model/property/DateProperty;
.source "RecurrenceId.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/fortuna/ical4j/model/property/RecurrenceId$Factory;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x3dda0837d4fba07eL


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Lnet/fortuna/ical4j/model/property/RecurrenceId$Factory;

    invoke-direct {v0}, Lnet/fortuna/ical4j/model/property/RecurrenceId$Factory;-><init>()V

    const-string v1, "RECURRENCE-ID"

    invoke-direct {p0, v1, v0}, Lnet/fortuna/ical4j/model/property/DateProperty;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 2
    new-instance v0, Lnet/fortuna/ical4j/model/DateTime;

    invoke-direct {v0}, Lnet/fortuna/ical4j/model/DateTime;-><init>()V

    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/property/DateProperty;->setDate(Lnet/fortuna/ical4j/model/Date;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 4
    new-instance v0, Lnet/fortuna/ical4j/model/property/RecurrenceId$Factory;

    invoke-direct {v0}, Lnet/fortuna/ical4j/model/property/RecurrenceId$Factory;-><init>()V

    const-string v1, "RECURRENCE-ID"

    invoke-direct {p0, v1, v0}, Lnet/fortuna/ical4j/model/property/DateProperty;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 5
    invoke-virtual {p0, p1}, Lnet/fortuna/ical4j/model/property/DateProperty;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/TimeZone;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 6
    new-instance v0, Lnet/fortuna/ical4j/model/property/RecurrenceId$Factory;

    invoke-direct {v0}, Lnet/fortuna/ical4j/model/property/RecurrenceId$Factory;-><init>()V

    const-string v1, "RECURRENCE-ID"

    invoke-direct {p0, v1, p2, v0}, Lnet/fortuna/ical4j/model/property/DateProperty;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/TimeZone;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 7
    invoke-virtual {p0, p1}, Lnet/fortuna/ical4j/model/property/DateProperty;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/Date;)V
    .locals 2

    .line 10
    new-instance v0, Lnet/fortuna/ical4j/model/property/RecurrenceId$Factory;

    invoke-direct {v0}, Lnet/fortuna/ical4j/model/property/RecurrenceId$Factory;-><init>()V

    const-string v1, "RECURRENCE-ID"

    invoke-direct {p0, v1, v0}, Lnet/fortuna/ical4j/model/property/DateProperty;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 11
    invoke-virtual {p0, p1}, Lnet/fortuna/ical4j/model/property/DateProperty;->setDate(Lnet/fortuna/ical4j/model/Date;)V

    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/ParameterList;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 8
    new-instance v0, Lnet/fortuna/ical4j/model/property/RecurrenceId$Factory;

    invoke-direct {v0}, Lnet/fortuna/ical4j/model/property/RecurrenceId$Factory;-><init>()V

    const-string v1, "RECURRENCE-ID"

    invoke-direct {p0, v1, p1, v0}, Lnet/fortuna/ical4j/model/property/DateProperty;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 9
    invoke-virtual {p0, p2}, Lnet/fortuna/ical4j/model/property/DateProperty;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/ParameterList;Lnet/fortuna/ical4j/model/Date;)V
    .locals 2

    .line 12
    new-instance v0, Lnet/fortuna/ical4j/model/property/RecurrenceId$Factory;

    invoke-direct {v0}, Lnet/fortuna/ical4j/model/property/RecurrenceId$Factory;-><init>()V

    const-string v1, "RECURRENCE-ID"

    invoke-direct {p0, v1, p1, v0}, Lnet/fortuna/ical4j/model/property/DateProperty;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 13
    invoke-virtual {p0, p2}, Lnet/fortuna/ical4j/model/property/DateProperty;->setDate(Lnet/fortuna/ical4j/model/Date;)V

    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/TimeZone;)V
    .locals 2

    .line 3
    new-instance v0, Lnet/fortuna/ical4j/model/property/RecurrenceId$Factory;

    invoke-direct {v0}, Lnet/fortuna/ical4j/model/property/RecurrenceId$Factory;-><init>()V

    const-string v1, "RECURRENCE-ID"

    invoke-direct {p0, v1, p1, v0}, Lnet/fortuna/ical4j/model/property/DateProperty;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/TimeZone;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    return-void
.end method


# virtual methods
.method public final validate()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/fortuna/ical4j/validate/ValidationException;
        }
    .end annotation

    .line 1
    invoke-super {p0}, Lnet/fortuna/ical4j/model/property/DateProperty;->validate()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Property;->getParameters()Lnet/fortuna/ical4j/model/ParameterList;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const-string v1, "RANGE"

    .line 9
    .line 10
    invoke-static {v1, v0}, Lnet/fortuna/ical4j/validate/ParameterValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;)V

    .line 11
    .line 12
    .line 13
    return-void
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
