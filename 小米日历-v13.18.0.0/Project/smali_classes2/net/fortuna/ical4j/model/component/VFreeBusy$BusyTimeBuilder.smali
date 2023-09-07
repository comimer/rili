.class Lnet/fortuna/ical4j/model/component/VFreeBusy$BusyTimeBuilder;
.super Ljava/lang/Object;
.source "VFreeBusy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/fortuna/ical4j/model/component/VFreeBusy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BusyTimeBuilder"
.end annotation


# instance fields
.field private components:Lnet/fortuna/ical4j/model/ComponentList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/fortuna/ical4j/model/ComponentList<",
            "Lnet/fortuna/ical4j/model/component/CalendarComponent;",
            ">;"
        }
    .end annotation
.end field

.field private end:Lnet/fortuna/ical4j/model/DateTime;

.field private start:Lnet/fortuna/ical4j/model/DateTime;

.field final synthetic this$0:Lnet/fortuna/ical4j/model/component/VFreeBusy;


# direct methods
.method private constructor <init>(Lnet/fortuna/ical4j/model/component/VFreeBusy;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/fortuna/ical4j/model/component/VFreeBusy$BusyTimeBuilder;->this$0:Lnet/fortuna/ical4j/model/component/VFreeBusy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/fortuna/ical4j/model/component/VFreeBusy;Lnet/fortuna/ical4j/model/component/VFreeBusy$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lnet/fortuna/ical4j/model/component/VFreeBusy$BusyTimeBuilder;-><init>(Lnet/fortuna/ical4j/model/component/VFreeBusy;)V

    return-void
.end method

.method public static synthetic a(Lnet/fortuna/ical4j/model/DateRange;Lnet/fortuna/ical4j/model/Period;)Z
    .locals 0

    invoke-static {p0, p1}, Lnet/fortuna/ical4j/model/component/VFreeBusy$BusyTimeBuilder;->lambda$build$0(Lnet/fortuna/ical4j/model/DateRange;Lnet/fortuna/ical4j/model/Period;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$build$0(Lnet/fortuna/ical4j/model/DateRange;Lnet/fortuna/ical4j/model/Period;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lnet/fortuna/ical4j/model/DateRange;->intersects(Lnet/fortuna/ical4j/model/DateRange;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    xor-int/lit8 p0, p0, 0x1

    .line 6
    .line 7
    return p0
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
.end method


# virtual methods
.method public build()Lnet/fortuna/ical4j/model/property/FreeBusy;
    .locals 4

    .line 1
    iget-object v0, p0, Lnet/fortuna/ical4j/model/component/VFreeBusy$BusyTimeBuilder;->this$0:Lnet/fortuna/ical4j/model/component/VFreeBusy;

    .line 2
    .line 3
    iget-object v1, p0, Lnet/fortuna/ical4j/model/component/VFreeBusy$BusyTimeBuilder;->components:Lnet/fortuna/ical4j/model/ComponentList;

    .line 4
    .line 5
    iget-object v2, p0, Lnet/fortuna/ical4j/model/component/VFreeBusy$BusyTimeBuilder;->start:Lnet/fortuna/ical4j/model/DateTime;

    .line 6
    .line 7
    iget-object v3, p0, Lnet/fortuna/ical4j/model/component/VFreeBusy$BusyTimeBuilder;->end:Lnet/fortuna/ical4j/model/DateTime;

    .line 8
    .line 9
    invoke-static {v0, v1, v2, v3}, Lnet/fortuna/ical4j/model/component/VFreeBusy;->access$300(Lnet/fortuna/ical4j/model/component/VFreeBusy;Lnet/fortuna/ical4j/model/ComponentList;Lnet/fortuna/ical4j/model/DateTime;Lnet/fortuna/ical4j/model/DateTime;)Lnet/fortuna/ical4j/model/PeriodList;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    new-instance v1, Lnet/fortuna/ical4j/model/DateRange;

    .line 14
    .line 15
    iget-object v2, p0, Lnet/fortuna/ical4j/model/component/VFreeBusy$BusyTimeBuilder;->start:Lnet/fortuna/ical4j/model/DateTime;

    .line 16
    .line 17
    iget-object v3, p0, Lnet/fortuna/ical4j/model/component/VFreeBusy$BusyTimeBuilder;->end:Lnet/fortuna/ical4j/model/DateTime;

    .line 18
    .line 19
    invoke-direct {v1, v2, v3}, Lnet/fortuna/ical4j/model/DateRange;-><init>(Ljava/util/Date;Ljava/util/Date;)V

    .line 20
    .line 21
    .line 22
    const/4 v2, 0x1

    .line 23
    invoke-virtual {v0, v2}, Lnet/fortuna/ical4j/model/PeriodList;->setUtc(Z)V

    .line 24
    .line 25
    .line 26
    new-instance v2, Lnet/fortuna/ical4j/model/component/h;

    .line 27
    .line 28
    invoke-direct {v2, v1}, Lnet/fortuna/ical4j/model/component/h;-><init>(Lnet/fortuna/ical4j/model/DateRange;)V

    .line 29
    .line 30
    .line 31
    invoke-interface {v0, v2}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    .line 32
    .line 33
    .line 34
    new-instance v1, Lnet/fortuna/ical4j/model/property/FreeBusy;

    .line 35
    .line 36
    invoke-direct {v1, v0}, Lnet/fortuna/ical4j/model/property/FreeBusy;-><init>(Lnet/fortuna/ical4j/model/PeriodList;)V

    .line 37
    .line 38
    .line 39
    return-object v1
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

.method public components(Lnet/fortuna/ical4j/model/ComponentList;)Lnet/fortuna/ical4j/model/component/VFreeBusy$BusyTimeBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/fortuna/ical4j/model/ComponentList<",
            "Lnet/fortuna/ical4j/model/component/CalendarComponent;",
            ">;)",
            "Lnet/fortuna/ical4j/model/component/VFreeBusy$BusyTimeBuilder;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lnet/fortuna/ical4j/model/component/VFreeBusy$BusyTimeBuilder;->components:Lnet/fortuna/ical4j/model/ComponentList;

    .line 2
    .line 3
    return-object p0
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
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
.end method

.method public end(Lnet/fortuna/ical4j/model/DateTime;)Lnet/fortuna/ical4j/model/component/VFreeBusy$BusyTimeBuilder;
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/fortuna/ical4j/model/component/VFreeBusy$BusyTimeBuilder;->end:Lnet/fortuna/ical4j/model/DateTime;

    .line 2
    .line 3
    return-object p0
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
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
.end method

.method public start(Lnet/fortuna/ical4j/model/DateTime;)Lnet/fortuna/ical4j/model/component/VFreeBusy$BusyTimeBuilder;
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/fortuna/ical4j/model/component/VFreeBusy$BusyTimeBuilder;->start:Lnet/fortuna/ical4j/model/DateTime;

    .line 2
    .line 3
    return-object p0
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
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
.end method
