.class public Lnet/fortuna/ical4j/model/property/LastModified;
.super Lnet/fortuna/ical4j/model/property/UtcProperty;
.source "LastModified.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/fortuna/ical4j/model/property/LastModified$Factory;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x4964c8ce96746edeL


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Lnet/fortuna/ical4j/model/property/LastModified$Factory;

    invoke-direct {v0}, Lnet/fortuna/ical4j/model/property/LastModified$Factory;-><init>()V

    const-string v1, "LAST-MODIFIED"

    invoke-direct {p0, v1, v0}, Lnet/fortuna/ical4j/model/property/UtcProperty;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 2
    new-instance v0, Lnet/fortuna/ical4j/model/ParameterList;

    invoke-direct {v0}, Lnet/fortuna/ical4j/model/ParameterList;-><init>()V

    invoke-direct {p0, v0, p1}, Lnet/fortuna/ical4j/model/property/LastModified;-><init>(Lnet/fortuna/ical4j/model/ParameterList;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/DateTime;)V
    .locals 2

    .line 5
    new-instance v0, Lnet/fortuna/ical4j/model/property/LastModified$Factory;

    invoke-direct {v0}, Lnet/fortuna/ical4j/model/property/LastModified$Factory;-><init>()V

    const-string v1, "LAST-MODIFIED"

    invoke-direct {p0, v1, v0}, Lnet/fortuna/ical4j/model/property/UtcProperty;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    const/4 v0, 0x1

    .line 6
    invoke-virtual {p1, v0}, Lnet/fortuna/ical4j/model/DateTime;->setUtc(Z)V

    .line 7
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

    .line 3
    new-instance v0, Lnet/fortuna/ical4j/model/property/LastModified$Factory;

    invoke-direct {v0}, Lnet/fortuna/ical4j/model/property/LastModified$Factory;-><init>()V

    const-string v1, "LAST-MODIFIED"

    invoke-direct {p0, v1, p1, v0}, Lnet/fortuna/ical4j/model/property/UtcProperty;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 4
    invoke-virtual {p0, p2}, Lnet/fortuna/ical4j/model/property/DateProperty;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/ParameterList;Lnet/fortuna/ical4j/model/DateTime;)V
    .locals 2

    .line 8
    new-instance v0, Lnet/fortuna/ical4j/model/property/LastModified$Factory;

    invoke-direct {v0}, Lnet/fortuna/ical4j/model/property/LastModified$Factory;-><init>()V

    const-string v1, "LAST-MODIFIED"

    invoke-direct {p0, v1, p1, v0}, Lnet/fortuna/ical4j/model/property/UtcProperty;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    const/4 p1, 0x1

    .line 9
    invoke-virtual {p2, p1}, Lnet/fortuna/ical4j/model/DateTime;->setUtc(Z)V

    .line 10
    invoke-virtual {p0, p2}, Lnet/fortuna/ical4j/model/property/DateProperty;->setDate(Lnet/fortuna/ical4j/model/Date;)V

    return-void
.end method
