.class public Lnet/fortuna/ical4j/model/property/Completed;
.super Lnet/fortuna/ical4j/model/property/UtcProperty;
.source "Completed.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/fortuna/ical4j/model/property/Completed$Factory;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x5eb479d2d455f10dL


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Lnet/fortuna/ical4j/model/property/Completed$Factory;

    invoke-direct {v0}, Lnet/fortuna/ical4j/model/property/Completed$Factory;-><init>()V

    const-string v1, "COMPLETED"

    invoke-direct {p0, v1, v0}, Lnet/fortuna/ical4j/model/property/UtcProperty;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 2
    new-instance v0, Lnet/fortuna/ical4j/model/property/Completed$Factory;

    invoke-direct {v0}, Lnet/fortuna/ical4j/model/property/Completed$Factory;-><init>()V

    const-string v1, "COMPLETED"

    invoke-direct {p0, v1, v0}, Lnet/fortuna/ical4j/model/property/UtcProperty;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 3
    invoke-virtual {p0, p1}, Lnet/fortuna/ical4j/model/property/DateProperty;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/DateTime;)V
    .locals 2

    .line 6
    new-instance v0, Lnet/fortuna/ical4j/model/property/Completed$Factory;

    invoke-direct {v0}, Lnet/fortuna/ical4j/model/property/Completed$Factory;-><init>()V

    const-string v1, "COMPLETED"

    invoke-direct {p0, v1, v0}, Lnet/fortuna/ical4j/model/property/UtcProperty;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    const/4 v0, 0x1

    .line 7
    invoke-virtual {p1, v0}, Lnet/fortuna/ical4j/model/DateTime;->setUtc(Z)V

    .line 8
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

    .line 4
    new-instance v0, Lnet/fortuna/ical4j/model/property/Completed$Factory;

    invoke-direct {v0}, Lnet/fortuna/ical4j/model/property/Completed$Factory;-><init>()V

    const-string v1, "COMPLETED"

    invoke-direct {p0, v1, p1, v0}, Lnet/fortuna/ical4j/model/property/UtcProperty;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 5
    invoke-virtual {p0, p2}, Lnet/fortuna/ical4j/model/property/DateProperty;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/ParameterList;Lnet/fortuna/ical4j/model/DateTime;)V
    .locals 2

    .line 9
    new-instance v0, Lnet/fortuna/ical4j/model/property/Completed$Factory;

    invoke-direct {v0}, Lnet/fortuna/ical4j/model/property/Completed$Factory;-><init>()V

    const-string v1, "COMPLETED"

    invoke-direct {p0, v1, p1, v0}, Lnet/fortuna/ical4j/model/property/UtcProperty;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    const/4 p1, 0x1

    .line 10
    invoke-virtual {p2, p1}, Lnet/fortuna/ical4j/model/DateTime;->setUtc(Z)V

    .line 11
    invoke-virtual {p0, p2}, Lnet/fortuna/ical4j/model/property/DateProperty;->setDate(Lnet/fortuna/ical4j/model/Date;)V

    return-void
.end method
