.class public Lnet/fortuna/ical4j/model/Recur$Builder;
.super Ljava/lang/Object;
.source "Recur.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/fortuna/ical4j/model/Recur;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private count:Ljava/lang/Integer;

.field private dayList:Lnet/fortuna/ical4j/model/WeekDayList;

.field private frequency:Lnet/fortuna/ical4j/model/Recur$Frequency;

.field private hourList:Lnet/fortuna/ical4j/model/NumberList;

.field private interval:Ljava/lang/Integer;

.field private minuteList:Lnet/fortuna/ical4j/model/NumberList;

.field private monthDayList:Lnet/fortuna/ical4j/model/NumberList;

.field private monthList:Lnet/fortuna/ical4j/model/NumberList;

.field private secondList:Lnet/fortuna/ical4j/model/NumberList;

.field private setPosList:Lnet/fortuna/ical4j/model/NumberList;

.field private until:Lnet/fortuna/ical4j/model/Date;

.field private weekNoList:Lnet/fortuna/ical4j/model/NumberList;

.field private weekStartDay:Lnet/fortuna/ical4j/model/WeekDay$Day;

.field private yearDayList:Lnet/fortuna/ical4j/model/NumberList;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lnet/fortuna/ical4j/model/Recur;
    .locals 2

    .line 1
    new-instance v0, Lnet/fortuna/ical4j/model/Recur;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/model/Recur;-><init>(Lnet/fortuna/ical4j/model/Recur$1;)V

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, Lnet/fortuna/ical4j/model/Recur$Builder;->frequency:Lnet/fortuna/ical4j/model/Recur$Frequency;

    .line 8
    .line 9
    invoke-static {v0, v1}, Lnet/fortuna/ical4j/model/Recur;->access$102(Lnet/fortuna/ical4j/model/Recur;Lnet/fortuna/ical4j/model/Recur$Frequency;)Lnet/fortuna/ical4j/model/Recur$Frequency;

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lnet/fortuna/ical4j/model/Recur$Builder;->until:Lnet/fortuna/ical4j/model/Date;

    .line 13
    .line 14
    invoke-static {v0, v1}, Lnet/fortuna/ical4j/model/Recur;->access$202(Lnet/fortuna/ical4j/model/Recur;Lnet/fortuna/ical4j/model/Date;)Lnet/fortuna/ical4j/model/Date;

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lnet/fortuna/ical4j/model/Recur$Builder;->count:Ljava/lang/Integer;

    .line 18
    .line 19
    invoke-static {v0, v1}, Lnet/fortuna/ical4j/model/Recur;->access$302(Lnet/fortuna/ical4j/model/Recur;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Lnet/fortuna/ical4j/model/Recur$Builder;->interval:Ljava/lang/Integer;

    .line 23
    .line 24
    invoke-static {v0, v1}, Lnet/fortuna/ical4j/model/Recur;->access$402(Lnet/fortuna/ical4j/model/Recur;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Lnet/fortuna/ical4j/model/Recur$Builder;->secondList:Lnet/fortuna/ical4j/model/NumberList;

    .line 28
    .line 29
    invoke-static {v0, v1}, Lnet/fortuna/ical4j/model/Recur;->access$502(Lnet/fortuna/ical4j/model/Recur;Lnet/fortuna/ical4j/model/NumberList;)Lnet/fortuna/ical4j/model/NumberList;

    .line 30
    .line 31
    .line 32
    iget-object v1, p0, Lnet/fortuna/ical4j/model/Recur$Builder;->minuteList:Lnet/fortuna/ical4j/model/NumberList;

    .line 33
    .line 34
    invoke-static {v0, v1}, Lnet/fortuna/ical4j/model/Recur;->access$602(Lnet/fortuna/ical4j/model/Recur;Lnet/fortuna/ical4j/model/NumberList;)Lnet/fortuna/ical4j/model/NumberList;

    .line 35
    .line 36
    .line 37
    iget-object v1, p0, Lnet/fortuna/ical4j/model/Recur$Builder;->hourList:Lnet/fortuna/ical4j/model/NumberList;

    .line 38
    .line 39
    invoke-static {v0, v1}, Lnet/fortuna/ical4j/model/Recur;->access$702(Lnet/fortuna/ical4j/model/Recur;Lnet/fortuna/ical4j/model/NumberList;)Lnet/fortuna/ical4j/model/NumberList;

    .line 40
    .line 41
    .line 42
    iget-object v1, p0, Lnet/fortuna/ical4j/model/Recur$Builder;->dayList:Lnet/fortuna/ical4j/model/WeekDayList;

    .line 43
    .line 44
    invoke-static {v0, v1}, Lnet/fortuna/ical4j/model/Recur;->access$802(Lnet/fortuna/ical4j/model/Recur;Lnet/fortuna/ical4j/model/WeekDayList;)Lnet/fortuna/ical4j/model/WeekDayList;

    .line 45
    .line 46
    .line 47
    iget-object v1, p0, Lnet/fortuna/ical4j/model/Recur$Builder;->monthDayList:Lnet/fortuna/ical4j/model/NumberList;

    .line 48
    .line 49
    invoke-static {v0, v1}, Lnet/fortuna/ical4j/model/Recur;->access$902(Lnet/fortuna/ical4j/model/Recur;Lnet/fortuna/ical4j/model/NumberList;)Lnet/fortuna/ical4j/model/NumberList;

    .line 50
    .line 51
    .line 52
    iget-object v1, p0, Lnet/fortuna/ical4j/model/Recur$Builder;->yearDayList:Lnet/fortuna/ical4j/model/NumberList;

    .line 53
    .line 54
    invoke-static {v0, v1}, Lnet/fortuna/ical4j/model/Recur;->access$1002(Lnet/fortuna/ical4j/model/Recur;Lnet/fortuna/ical4j/model/NumberList;)Lnet/fortuna/ical4j/model/NumberList;

    .line 55
    .line 56
    .line 57
    iget-object v1, p0, Lnet/fortuna/ical4j/model/Recur$Builder;->weekNoList:Lnet/fortuna/ical4j/model/NumberList;

    .line 58
    .line 59
    invoke-static {v0, v1}, Lnet/fortuna/ical4j/model/Recur;->access$1102(Lnet/fortuna/ical4j/model/Recur;Lnet/fortuna/ical4j/model/NumberList;)Lnet/fortuna/ical4j/model/NumberList;

    .line 60
    .line 61
    .line 62
    iget-object v1, p0, Lnet/fortuna/ical4j/model/Recur$Builder;->monthList:Lnet/fortuna/ical4j/model/NumberList;

    .line 63
    .line 64
    invoke-static {v0, v1}, Lnet/fortuna/ical4j/model/Recur;->access$1202(Lnet/fortuna/ical4j/model/Recur;Lnet/fortuna/ical4j/model/NumberList;)Lnet/fortuna/ical4j/model/NumberList;

    .line 65
    .line 66
    .line 67
    iget-object v1, p0, Lnet/fortuna/ical4j/model/Recur$Builder;->setPosList:Lnet/fortuna/ical4j/model/NumberList;

    .line 68
    .line 69
    invoke-static {v0, v1}, Lnet/fortuna/ical4j/model/Recur;->access$1302(Lnet/fortuna/ical4j/model/Recur;Lnet/fortuna/ical4j/model/NumberList;)Lnet/fortuna/ical4j/model/NumberList;

    .line 70
    .line 71
    .line 72
    iget-object v1, p0, Lnet/fortuna/ical4j/model/Recur$Builder;->weekStartDay:Lnet/fortuna/ical4j/model/WeekDay$Day;

    .line 73
    .line 74
    invoke-static {v0, v1}, Lnet/fortuna/ical4j/model/Recur;->access$1402(Lnet/fortuna/ical4j/model/Recur;Lnet/fortuna/ical4j/model/WeekDay$Day;)Lnet/fortuna/ical4j/model/WeekDay$Day;

    .line 75
    .line 76
    .line 77
    invoke-static {v0}, Lnet/fortuna/ical4j/model/Recur;->access$1500(Lnet/fortuna/ical4j/model/Recur;)V

    .line 78
    .line 79
    .line 80
    invoke-static {v0}, Lnet/fortuna/ical4j/model/Recur;->access$1600(Lnet/fortuna/ical4j/model/Recur;)V

    .line 81
    .line 82
    .line 83
    return-object v0
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

.method public count(Ljava/lang/Integer;)Lnet/fortuna/ical4j/model/Recur$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/fortuna/ical4j/model/Recur$Builder;->count:Ljava/lang/Integer;

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

.method public dayList(Lnet/fortuna/ical4j/model/WeekDayList;)Lnet/fortuna/ical4j/model/Recur$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/fortuna/ical4j/model/Recur$Builder;->dayList:Lnet/fortuna/ical4j/model/WeekDayList;

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

.method public frequency(Lnet/fortuna/ical4j/model/Recur$Frequency;)Lnet/fortuna/ical4j/model/Recur$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/fortuna/ical4j/model/Recur$Builder;->frequency:Lnet/fortuna/ical4j/model/Recur$Frequency;

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

.method public hourList(Lnet/fortuna/ical4j/model/NumberList;)Lnet/fortuna/ical4j/model/Recur$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/fortuna/ical4j/model/Recur$Builder;->hourList:Lnet/fortuna/ical4j/model/NumberList;

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

.method public interval(Ljava/lang/Integer;)Lnet/fortuna/ical4j/model/Recur$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/fortuna/ical4j/model/Recur$Builder;->interval:Ljava/lang/Integer;

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

.method public minuteList(Lnet/fortuna/ical4j/model/NumberList;)Lnet/fortuna/ical4j/model/Recur$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/fortuna/ical4j/model/Recur$Builder;->minuteList:Lnet/fortuna/ical4j/model/NumberList;

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

.method public monthDayList(Lnet/fortuna/ical4j/model/NumberList;)Lnet/fortuna/ical4j/model/Recur$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/fortuna/ical4j/model/Recur$Builder;->monthDayList:Lnet/fortuna/ical4j/model/NumberList;

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

.method public monthList(Lnet/fortuna/ical4j/model/NumberList;)Lnet/fortuna/ical4j/model/Recur$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/fortuna/ical4j/model/Recur$Builder;->monthList:Lnet/fortuna/ical4j/model/NumberList;

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

.method public secondList(Lnet/fortuna/ical4j/model/NumberList;)Lnet/fortuna/ical4j/model/Recur$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/fortuna/ical4j/model/Recur$Builder;->secondList:Lnet/fortuna/ical4j/model/NumberList;

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

.method public setPosList(Lnet/fortuna/ical4j/model/NumberList;)Lnet/fortuna/ical4j/model/Recur$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/fortuna/ical4j/model/Recur$Builder;->setPosList:Lnet/fortuna/ical4j/model/NumberList;

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

.method public until(Lnet/fortuna/ical4j/model/Date;)Lnet/fortuna/ical4j/model/Recur$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/fortuna/ical4j/model/Recur$Builder;->until:Lnet/fortuna/ical4j/model/Date;

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

.method public weekNoList(Lnet/fortuna/ical4j/model/NumberList;)Lnet/fortuna/ical4j/model/Recur$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/fortuna/ical4j/model/Recur$Builder;->weekNoList:Lnet/fortuna/ical4j/model/NumberList;

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

.method public weekStartDay(Lnet/fortuna/ical4j/model/WeekDay$Day;)Lnet/fortuna/ical4j/model/Recur$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/fortuna/ical4j/model/Recur$Builder;->weekStartDay:Lnet/fortuna/ical4j/model/WeekDay$Day;

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

.method public yearDayList(Lnet/fortuna/ical4j/model/NumberList;)Lnet/fortuna/ical4j/model/Recur$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/fortuna/ical4j/model/Recur$Builder;->yearDayList:Lnet/fortuna/ical4j/model/NumberList;

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
