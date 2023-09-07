.class public Lnet/fortuna/ical4j/model/ComponentGroup;
.super Ljava/lang/Object;
.source "ComponentGroup.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lnet/fortuna/ical4j/model/Component;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final componentFilter:Lnet/fortuna/ical4j/filter/Filter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/fortuna/ical4j/filter/Filter<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final components:Lnet/fortuna/ical4j/model/ComponentList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/fortuna/ical4j/model/ComponentList<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnet/fortuna/ical4j/model/ComponentList;Lnet/fortuna/ical4j/model/property/Uid;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/fortuna/ical4j/model/ComponentList<",
            "TT;>;",
            "Lnet/fortuna/ical4j/model/property/Uid;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lnet/fortuna/ical4j/model/ComponentGroup;-><init>(Lnet/fortuna/ical4j/model/ComponentList;Lnet/fortuna/ical4j/model/property/Uid;Lnet/fortuna/ical4j/model/property/RecurrenceId;)V

    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/ComponentList;Lnet/fortuna/ical4j/model/property/Uid;Lnet/fortuna/ical4j/model/property/RecurrenceId;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/fortuna/ical4j/model/ComponentList<",
            "TT;>;",
            "Lnet/fortuna/ical4j/model/property/Uid;",
            "Lnet/fortuna/ical4j/model/property/RecurrenceId;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lnet/fortuna/ical4j/model/ComponentGroup;->components:Lnet/fortuna/ical4j/model/ComponentList;

    if-eqz p3, :cond_0

    .line 4
    new-instance p1, Lnet/fortuna/ical4j/filter/HasPropertyRule;

    invoke-direct {p1, p2}, Lnet/fortuna/ical4j/filter/HasPropertyRule;-><init>(Lnet/fortuna/ical4j/model/Property;)V

    new-instance p2, Lnet/fortuna/ical4j/filter/HasPropertyRule;

    invoke-direct {p2, p3}, Lnet/fortuna/ical4j/filter/HasPropertyRule;-><init>(Lnet/fortuna/ical4j/model/Property;)V

    invoke-interface {p1, p2}, Ljava/util/function/Predicate;->and(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object p1

    goto :goto_0

    .line 5
    :cond_0
    new-instance p1, Lnet/fortuna/ical4j/filter/HasPropertyRule;

    invoke-direct {p1, p2}, Lnet/fortuna/ical4j/filter/HasPropertyRule;-><init>(Lnet/fortuna/ical4j/model/Property;)V

    .line 6
    :goto_0
    new-instance p2, Lnet/fortuna/ical4j/filter/Filter;

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/util/function/Predicate;

    const/4 v0, 0x0

    aput-object p1, p3, v0

    invoke-direct {p2, p3}, Lnet/fortuna/ical4j/filter/Filter;-><init>([Ljava/util/function/Predicate;)V

    iput-object p2, p0, Lnet/fortuna/ical4j/model/ComponentGroup;->componentFilter:Lnet/fortuna/ical4j/filter/Filter;

    return-void
.end method

.method public static synthetic a(Lnet/fortuna/ical4j/model/property/RecurrenceId;Lnet/fortuna/ical4j/model/Period;)Z
    .locals 0

    invoke-static {p0, p1}, Lnet/fortuna/ical4j/model/ComponentGroup;->lambda$calculateRecurrenceSet$0(Lnet/fortuna/ical4j/model/property/RecurrenceId;Lnet/fortuna/ical4j/model/Period;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Lnet/fortuna/ical4j/model/PeriodList;Lnet/fortuna/ical4j/model/Period;Lnet/fortuna/ical4j/model/Component;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lnet/fortuna/ical4j/model/ComponentGroup;->lambda$calculateRecurrenceSet$1(Lnet/fortuna/ical4j/model/PeriodList;Lnet/fortuna/ical4j/model/Period;Lnet/fortuna/ical4j/model/Component;)V

    return-void
.end method

.method private static synthetic lambda$calculateRecurrenceSet$0(Lnet/fortuna/ical4j/model/property/RecurrenceId;Lnet/fortuna/ical4j/model/Period;)Z
    .locals 0

    .line 1
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/Period;->getStart()Lnet/fortuna/ical4j/model/DateTime;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/DateProperty;->getDate()Lnet/fortuna/ical4j/model/Date;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p1, p0}, Lnet/fortuna/ical4j/model/DateTime;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
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

.method private static synthetic lambda$calculateRecurrenceSet$1(Lnet/fortuna/ical4j/model/PeriodList;Lnet/fortuna/ical4j/model/Period;Lnet/fortuna/ical4j/model/Component;)V
    .locals 3

    .line 1
    const-string v0, "RECURRENCE-ID"

    .line 2
    .line 3
    invoke-virtual {p2, v0}, Lnet/fortuna/ical4j/model/Component;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lnet/fortuna/ical4j/model/property/RecurrenceId;

    .line 8
    .line 9
    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    new-instance v2, Lnet/fortuna/ical4j/model/w;

    .line 14
    .line 15
    invoke-direct {v2, v0}, Lnet/fortuna/ical4j/model/w;-><init>(Lnet/fortuna/ical4j/model/property/RecurrenceId;)V

    .line 16
    .line 17
    .line 18
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Ljava/util/List;

    .line 31
    .line 32
    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/PeriodList;->removeAll(Ljava/util/Collection;)Z

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2, p1}, Lnet/fortuna/ical4j/model/Component;->calculateRecurrenceSet(Lnet/fortuna/ical4j/model/Period;)Lnet/fortuna/ical4j/model/PeriodList;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p0, p1}, Lnet/fortuna/ical4j/model/PeriodList;->addAll(Ljava/util/Collection;)Z

    .line 40
    .line 41
    .line 42
    return-void
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
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
.end method


# virtual methods
.method public calculateRecurrenceSet(Lnet/fortuna/ical4j/model/Period;)Lnet/fortuna/ical4j/model/PeriodList;
    .locals 5

    .line 1
    new-instance v0, Lnet/fortuna/ical4j/model/PeriodList;

    .line 2
    .line 3
    invoke-direct {v0}, Lnet/fortuna/ical4j/model/PeriodList;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/ComponentGroup;->getRevisions()Lnet/fortuna/ical4j/model/ComponentList;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-eqz v3, :cond_1

    .line 24
    .line 25
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    check-cast v3, Lnet/fortuna/ical4j/model/Component;

    .line 30
    .line 31
    const-string v4, "RECURRENCE-ID"

    .line 32
    .line 33
    invoke-virtual {v3, v4}, Lnet/fortuna/ical4j/model/Component;->getProperties(Ljava/lang/String;)Lnet/fortuna/ical4j/model/PropertyList;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    invoke-virtual {v4}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    if-nez v4, :cond_0

    .line 42
    .line 43
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    invoke-virtual {v3, p1}, Lnet/fortuna/ical4j/model/Component;->calculateRecurrenceSet(Lnet/fortuna/ical4j/model/Period;)Lnet/fortuna/ical4j/model/PeriodList;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    invoke-virtual {v0, v3}, Lnet/fortuna/ical4j/model/PeriodList;->add(Lnet/fortuna/ical4j/model/PeriodList;)Lnet/fortuna/ical4j/model/PeriodList;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    goto :goto_0

    .line 56
    :cond_1
    new-instance v2, Lnet/fortuna/ical4j/model/v;

    .line 57
    .line 58
    invoke-direct {v2, v0, p1}, Lnet/fortuna/ical4j/model/v;-><init>(Lnet/fortuna/ical4j/model/PeriodList;Lnet/fortuna/ical4j/model/Period;)V

    .line 59
    .line 60
    .line 61
    invoke-interface {v1, v2}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 62
    .line 63
    .line 64
    return-object v0
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

.method public getLatestRevision()Lnet/fortuna/ical4j/model/Component;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/ComponentGroup;->getRevisions()Lnet/fortuna/ical4j/model/ComponentList;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lnet/fortuna/ical4j/model/ComponentSequenceComparator;

    .line 6
    .line 7
    invoke-direct {v1}, Lnet/fortuna/ical4j/model/ComponentSequenceComparator;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-interface {v0, v1}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Lnet/fortuna/ical4j/model/Component;

    .line 25
    .line 26
    return-object v0
    .line 27
.end method

.method public getRevisions()Lnet/fortuna/ical4j/model/ComponentList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/fortuna/ical4j/model/ComponentList<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/fortuna/ical4j/model/ComponentGroup;->componentFilter:Lnet/fortuna/ical4j/filter/Filter;

    .line 2
    .line 3
    iget-object v1, p0, Lnet/fortuna/ical4j/model/ComponentGroup;->components:Lnet/fortuna/ical4j/model/ComponentList;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/filter/Filter;->filter(Ljava/util/Collection;)Ljava/util/Collection;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lnet/fortuna/ical4j/model/ComponentList;

    .line 10
    .line 11
    return-object v0
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
