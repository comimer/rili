.class public Lnet/fortuna/ical4j/model/property/FreeBusy;
.super Lnet/fortuna/ical4j/model/Property;
.source "FreeBusy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/fortuna/ical4j/model/property/FreeBusy$Factory;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x590a0cf0d34bd147L


# instance fields
.field private periods:Lnet/fortuna/ical4j/model/PeriodList;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Lnet/fortuna/ical4j/model/property/FreeBusy$Factory;

    invoke-direct {v0}, Lnet/fortuna/ical4j/model/property/FreeBusy$Factory;-><init>()V

    const-string v1, "FREEBUSY"

    invoke-direct {p0, v1, v0}, Lnet/fortuna/ical4j/model/Property;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 2
    new-instance v0, Lnet/fortuna/ical4j/model/PeriodList;

    invoke-direct {v0}, Lnet/fortuna/ical4j/model/PeriodList;-><init>()V

    iput-object v0, p0, Lnet/fortuna/ical4j/model/property/FreeBusy;->periods:Lnet/fortuna/ical4j/model/PeriodList;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 3
    new-instance v0, Lnet/fortuna/ical4j/model/property/FreeBusy$Factory;

    invoke-direct {v0}, Lnet/fortuna/ical4j/model/property/FreeBusy$Factory;-><init>()V

    const-string v1, "FREEBUSY"

    invoke-direct {p0, v1, v0}, Lnet/fortuna/ical4j/model/Property;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 4
    invoke-virtual {p0, p1}, Lnet/fortuna/ical4j/model/property/FreeBusy;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/ParameterList;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 5
    new-instance v0, Lnet/fortuna/ical4j/model/property/FreeBusy$Factory;

    invoke-direct {v0}, Lnet/fortuna/ical4j/model/property/FreeBusy$Factory;-><init>()V

    const-string v1, "FREEBUSY"

    invoke-direct {p0, v1, p1, v0}, Lnet/fortuna/ical4j/model/Property;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 6
    invoke-virtual {p0, p2}, Lnet/fortuna/ical4j/model/property/FreeBusy;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/ParameterList;Lnet/fortuna/ical4j/model/PeriodList;)V
    .locals 2

    .line 11
    new-instance v0, Lnet/fortuna/ical4j/model/property/FreeBusy$Factory;

    invoke-direct {v0}, Lnet/fortuna/ical4j/model/property/FreeBusy$Factory;-><init>()V

    const-string v1, "FREEBUSY"

    invoke-direct {p0, v1, p1, v0}, Lnet/fortuna/ical4j/model/Property;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 12
    invoke-virtual {p2}, Lnet/fortuna/ical4j/model/PeriodList;->isUtc()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 13
    iput-object p2, p0, Lnet/fortuna/ical4j/model/property/FreeBusy;->periods:Lnet/fortuna/ical4j/model/PeriodList;

    return-void

    .line 14
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Periods must be in UTC format"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/PeriodList;)V
    .locals 2

    .line 7
    new-instance v0, Lnet/fortuna/ical4j/model/property/FreeBusy$Factory;

    invoke-direct {v0}, Lnet/fortuna/ical4j/model/property/FreeBusy$Factory;-><init>()V

    const-string v1, "FREEBUSY"

    invoke-direct {p0, v1, v0}, Lnet/fortuna/ical4j/model/Property;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 8
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/PeriodList;->isUtc()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9
    iput-object p1, p0, Lnet/fortuna/ical4j/model/property/FreeBusy;->periods:Lnet/fortuna/ical4j/model/PeriodList;

    return-void

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Periods must be in UTC format"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final getPeriods()Lnet/fortuna/ical4j/model/PeriodList;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/fortuna/ical4j/model/property/FreeBusy;->periods:Lnet/fortuna/ical4j/model/PeriodList;

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

.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/FreeBusy;->getPeriods()Lnet/fortuna/ical4j/model/PeriodList;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/PeriodList;->toString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
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

.method public final setValue(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 1
    new-instance v0, Lnet/fortuna/ical4j/model/PeriodList;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lnet/fortuna/ical4j/model/PeriodList;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lnet/fortuna/ical4j/model/property/FreeBusy;->periods:Lnet/fortuna/ical4j/model/PeriodList;

    .line 7
    .line 8
    return-void
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
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
.end method

.method public final validate()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/fortuna/ical4j/validate/ValidationException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Property;->getParameters()Lnet/fortuna/ical4j/model/ParameterList;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "FBTYPE"

    .line 6
    .line 7
    invoke-static {v1, v0}, Lnet/fortuna/ical4j/validate/ParameterValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lnet/fortuna/ical4j/model/property/FreeBusy;->periods:Lnet/fortuna/ical4j/model/PeriodList;

    .line 11
    .line 12
    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/PeriodList;->isUtc()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    new-instance v0, Lnet/fortuna/ical4j/validate/ValidationException;

    .line 20
    .line 21
    const-string v1, "Periods must be in UTC format"

    .line 22
    .line 23
    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/validate/ValidationException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw v0
    .line 27
.end method
