.class public Lnet/fortuna/ical4j/model/property/Duration;
.super Lnet/fortuna/ical4j/model/Property;
.source "Duration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/fortuna/ical4j/model/property/Duration$Factory;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x7ee97572b24083beL


# instance fields
.field private duration:Lnet/fortuna/ical4j/model/TemporalAmountAdapter;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Lnet/fortuna/ical4j/model/property/Duration$Factory;

    invoke-direct {v0}, Lnet/fortuna/ical4j/model/property/Duration$Factory;-><init>()V

    const-string v1, "DURATION"

    invoke-direct {p0, v1, v0}, Lnet/fortuna/ical4j/model/Property;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    return-void
.end method

.method public constructor <init>(Ljava/time/temporal/TemporalAmount;)V
    .locals 2

    .line 5
    new-instance v0, Lnet/fortuna/ical4j/model/property/Duration$Factory;

    invoke-direct {v0}, Lnet/fortuna/ical4j/model/property/Duration$Factory;-><init>()V

    const-string v1, "DURATION"

    invoke-direct {p0, v1, v0}, Lnet/fortuna/ical4j/model/Property;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 6
    new-instance v0, Lnet/fortuna/ical4j/model/TemporalAmountAdapter;

    invoke-direct {v0, p1}, Lnet/fortuna/ical4j/model/TemporalAmountAdapter;-><init>(Ljava/time/temporal/TemporalAmount;)V

    iput-object v0, p0, Lnet/fortuna/ical4j/model/property/Duration;->duration:Lnet/fortuna/ical4j/model/TemporalAmountAdapter;

    return-void
.end method

.method public constructor <init>(Ljava/util/Date;Ljava/util/Date;)V
    .locals 2

    .line 10
    new-instance v0, Lnet/fortuna/ical4j/model/property/Duration$Factory;

    invoke-direct {v0}, Lnet/fortuna/ical4j/model/property/Duration$Factory;-><init>()V

    const-string v1, "DURATION"

    invoke-direct {p0, v1, v0}, Lnet/fortuna/ical4j/model/Property;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 11
    invoke-static {p1, p2}, Lnet/fortuna/ical4j/model/TemporalAmountAdapter;->fromDateRange(Ljava/util/Date;Ljava/util/Date;)Lnet/fortuna/ical4j/model/TemporalAmountAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/TemporalAmountAdapter;->getDuration()Ljava/time/temporal/TemporalAmount;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/fortuna/ical4j/model/property/Duration;->setDuration(Ljava/time/temporal/TemporalAmount;)V

    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/Dur;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4
    invoke-static {p1}, Lnet/fortuna/ical4j/model/TemporalAmountAdapter;->from(Lnet/fortuna/ical4j/model/Dur;)Lnet/fortuna/ical4j/model/TemporalAmountAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/TemporalAmountAdapter;->getDuration()Ljava/time/temporal/TemporalAmount;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/fortuna/ical4j/model/property/Duration;-><init>(Ljava/time/temporal/TemporalAmount;)V

    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/ParameterList;Ljava/lang/String;)V
    .locals 2

    .line 2
    new-instance v0, Lnet/fortuna/ical4j/model/property/Duration$Factory;

    invoke-direct {v0}, Lnet/fortuna/ical4j/model/property/Duration$Factory;-><init>()V

    const-string v1, "DURATION"

    invoke-direct {p0, v1, p1, v0}, Lnet/fortuna/ical4j/model/Property;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 3
    invoke-virtual {p0, p2}, Lnet/fortuna/ical4j/model/property/Duration;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/ParameterList;Ljava/time/temporal/TemporalAmount;)V
    .locals 2

    .line 8
    new-instance v0, Lnet/fortuna/ical4j/model/property/Duration$Factory;

    invoke-direct {v0}, Lnet/fortuna/ical4j/model/property/Duration$Factory;-><init>()V

    const-string v1, "DURATION"

    invoke-direct {p0, v1, p1, v0}, Lnet/fortuna/ical4j/model/Property;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 9
    invoke-virtual {p0, p2}, Lnet/fortuna/ical4j/model/property/Duration;->setDuration(Ljava/time/temporal/TemporalAmount;)V

    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/ParameterList;Lnet/fortuna/ical4j/model/Dur;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7
    invoke-static {p2}, Lnet/fortuna/ical4j/model/TemporalAmountAdapter;->from(Lnet/fortuna/ical4j/model/Dur;)Lnet/fortuna/ical4j/model/TemporalAmountAdapter;

    move-result-object p2

    invoke-virtual {p2}, Lnet/fortuna/ical4j/model/TemporalAmountAdapter;->getDuration()Ljava/time/temporal/TemporalAmount;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lnet/fortuna/ical4j/model/property/Duration;-><init>(Lnet/fortuna/ical4j/model/ParameterList;Ljava/time/temporal/TemporalAmount;)V

    return-void
.end method


# virtual methods
.method public final getDuration()Ljava/time/temporal/TemporalAmount;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/fortuna/ical4j/model/property/Duration;->duration:Lnet/fortuna/ical4j/model/TemporalAmountAdapter;

    .line 2
    .line 3
    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/TemporalAmountAdapter;->getDuration()Ljava/time/temporal/TemporalAmount;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
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
    iget-object v0, p0, Lnet/fortuna/ical4j/model/property/Duration;->duration:Lnet/fortuna/ical4j/model/TemporalAmountAdapter;

    .line 2
    .line 3
    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/TemporalAmountAdapter;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
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

.method public final setDuration(Ljava/time/temporal/TemporalAmount;)V
    .locals 1

    .line 1
    new-instance v0, Lnet/fortuna/ical4j/model/TemporalAmountAdapter;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lnet/fortuna/ical4j/model/TemporalAmountAdapter;-><init>(Ljava/time/temporal/TemporalAmount;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lnet/fortuna/ical4j/model/property/Duration;->duration:Lnet/fortuna/ical4j/model/TemporalAmountAdapter;

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

.method public final setValue(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lnet/fortuna/ical4j/model/TemporalAmountAdapter;->parse(Ljava/lang/String;)Lnet/fortuna/ical4j/model/TemporalAmountAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lnet/fortuna/ical4j/model/property/Duration;->duration:Lnet/fortuna/ical4j/model/TemporalAmountAdapter;

    .line 6
    .line 7
    return-void
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
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
.end method

.method public validate()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/fortuna/ical4j/validate/ValidationException;
        }
    .end annotation

    return-void
.end method
