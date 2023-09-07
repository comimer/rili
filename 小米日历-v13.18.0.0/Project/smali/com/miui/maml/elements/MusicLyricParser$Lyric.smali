.class public Lcom/miui/maml/elements/MusicLyricParser$Lyric;
.super Ljava/lang/Object;
.source "MusicLyricParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/elements/MusicLyricParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Lyric"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;,
        Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLine;
    }
.end annotation


# instance fields
.field private final EMPTY_AFTER:Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;

.field private final EMPTY_BEFORE:Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;

.field private final mEntityList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;",
            ">;"
        }
    .end annotation
.end field

.field private final mHeader:Lcom/miui/maml/elements/MusicLyricParser$LyricHeader;

.field private mIsModified:Z

.field private mLyricLocator:Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;

.field private final mOpenTime:J

.field private mOriginHeaderOffset:I


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/MusicLyricParser$LyricHeader;Ljava/util/ArrayList;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/maml/elements/MusicLyricParser$LyricHeader;",
            "Ljava/util/ArrayList<",
            "Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;-><init>(Lcom/miui/maml/elements/MusicLyricParser$Lyric;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->mLyricLocator:Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;

    .line 10
    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    iput-wide v0, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->mOpenTime:J

    .line 16
    .line 17
    iput-object p1, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->mHeader:Lcom/miui/maml/elements/MusicLyricParser$LyricHeader;

    .line 18
    .line 19
    iget p1, p1, Lcom/miui/maml/elements/MusicLyricParser$LyricHeader;->offset:I

    .line 20
    .line 21
    iput p1, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->mOriginHeaderOffset:I

    .line 22
    .line 23
    iput-object p2, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    .line 24
    .line 25
    iput-boolean p3, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->mIsModified:Z

    .line 26
    .line 27
    new-instance p1, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;

    .line 28
    .line 29
    const/4 p3, -0x1

    .line 30
    const-string v0, "\n"

    .line 31
    .line 32
    invoke-direct {p1, p3, v0}, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;-><init>(ILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iput-object p1, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->EMPTY_BEFORE:Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;

    .line 36
    .line 37
    new-instance p1, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;

    .line 38
    .line 39
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 40
    .line 41
    .line 42
    move-result p2

    .line 43
    invoke-direct {p1, p2, v0}, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;-><init>(ILjava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iput-object p1, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->EMPTY_AFTER:Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;

    .line 47
    .line 48
    return-void
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
.end method

.method static synthetic access$000(Lcom/miui/maml/elements/MusicLyricParser$Lyric;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

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
.end method

.method private getTimeFromLyricShot(ID)J
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    add-int/lit8 v0, v0, -0x1

    .line 6
    .line 7
    if-lt p1, v0, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;

    .line 16
    .line 17
    iget v1, v1, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;->time:I

    .line 18
    .line 19
    sub-int/2addr p1, v0

    .line 20
    mul-int/lit16 p1, p1, 0x1f40

    .line 21
    .line 22
    add-int/2addr v1, p1

    .line 23
    int-to-long v0, v1

    .line 24
    const-wide v2, 0x40bf400000000000L    # 8000.0

    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    mul-double/2addr p2, v2

    .line 30
    double-to-long p1, p2

    .line 31
    add-long/2addr v0, p1

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;

    .line 40
    .line 41
    iget v0, v0, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;->time:I

    .line 42
    .line 43
    int-to-double v0, v0

    .line 44
    iget-object v2, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    .line 45
    .line 46
    add-int/lit8 v3, p1, 0x1

    .line 47
    .line 48
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    check-cast v2, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;

    .line 53
    .line 54
    iget v2, v2, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;->time:I

    .line 55
    .line 56
    iget-object v3, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    .line 57
    .line 58
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    check-cast p1, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;

    .line 63
    .line 64
    iget p1, p1, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;->time:I

    .line 65
    .line 66
    sub-int/2addr v2, p1

    .line 67
    int-to-double v2, v2

    .line 68
    mul-double/2addr v2, p2

    .line 69
    add-double/2addr v0, v2

    .line 70
    double-to-long v0, v0

    .line 71
    :goto_0
    return-wide v0
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
.end method


# virtual methods
.method public addOffset(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->mHeader:Lcom/miui/maml/elements/MusicLyricParser$LyricHeader;

    .line 2
    .line 3
    iget v1, v0, Lcom/miui/maml/elements/MusicLyricParser$LyricHeader;->offset:I

    .line 4
    .line 5
    add-int/2addr v1, p1

    .line 6
    iput v1, v0, Lcom/miui/maml/elements/MusicLyricParser$LyricHeader;->offset:I

    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    iput-boolean p1, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->mIsModified:Z

    .line 10
    .line 11
    return-void
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
.end method

.method public correctLyric(Lcom/miui/maml/elements/MusicLyricParser$LyricShot;ID)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-ltz p2, :cond_5

    .line 6
    .line 7
    if-gt p2, v0, :cond_5

    .line 8
    .line 9
    iget v1, p1, Lcom/miui/maml/elements/MusicLyricParser$LyricShot;->lineIndex:I

    .line 10
    .line 11
    if-ltz v1, :cond_5

    .line 12
    .line 13
    if-le v1, v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-wide v2, p1, Lcom/miui/maml/elements/MusicLyricParser$LyricShot;->percent:D

    .line 17
    .line 18
    invoke-direct {p0, v1, v2, v3}, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->getTimeFromLyricShot(ID)J

    .line 19
    .line 20
    .line 21
    move-result-wide v0

    .line 22
    invoke-direct {p0, p2, p3, p4}, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->getTimeFromLyricShot(ID)J

    .line 23
    .line 24
    .line 25
    move-result-wide v2

    .line 26
    const/4 v4, 0x1

    .line 27
    iget v5, p1, Lcom/miui/maml/elements/MusicLyricParser$LyricShot;->lineIndex:I

    .line 28
    .line 29
    if-gt p2, v5, :cond_1

    .line 30
    .line 31
    if-ne p2, v5, :cond_2

    .line 32
    .line 33
    iget-wide p1, p1, Lcom/miui/maml/elements/MusicLyricParser$LyricShot;->percent:D

    .line 34
    .line 35
    cmpl-double p1, p3, p1

    .line 36
    .line 37
    if-lez p1, :cond_2

    .line 38
    .line 39
    :cond_1
    const/4 v4, 0x0

    .line 40
    :cond_2
    if-nez v4, :cond_3

    .line 41
    .line 42
    cmp-long p1, v0, v2

    .line 43
    .line 44
    if-lez p1, :cond_3

    .line 45
    .line 46
    return-void

    .line 47
    :cond_3
    if-eqz v4, :cond_4

    .line 48
    .line 49
    cmp-long p1, v0, v2

    .line 50
    .line 51
    if-gez p1, :cond_4

    .line 52
    .line 53
    return-void

    .line 54
    :cond_4
    sub-long/2addr v0, v2

    .line 55
    long-to-int p1, v0

    .line 56
    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->addOffset(I)V

    .line 57
    .line 58
    .line 59
    :cond_5
    :goto_0
    return-void
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
.end method

.method public decorate()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-lez v1, :cond_2

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    check-cast v3, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;

    .line 24
    .line 25
    invoke-virtual {v3}, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;->isDecorated()Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-eqz v3, :cond_1

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_1
    :goto_0
    if-ge v2, v1, :cond_2

    .line 33
    .line 34
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    check-cast v3, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;

    .line 39
    .line 40
    invoke-virtual {v3}, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;->decorate()V

    .line 41
    .line 42
    .line 43
    add-int/lit8 v2, v2, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    :goto_1
    return-void
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
.end method

.method public getAfterLines(J)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->mLyricLocator:Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->getAfterLines(J)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
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
.end method

.method public getBeforeLines(J)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->mLyricLocator:Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->getBeforeLines(J)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
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
.end method

.method public getLastLine(J)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->mLyricLocator:Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->getLastLine(J)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
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
.end method

.method public getLine(J)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->mLyricLocator:Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->getLine(J)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
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
.end method

.method public getLyricContent(I)Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;
    .locals 1

    .line 1
    if-gez p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->EMPTY_BEFORE:Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-lt p1, v0, :cond_1

    .line 13
    .line 14
    iget-object p1, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->EMPTY_AFTER:Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    iget-object v0, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    check-cast p1, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;

    .line 24
    .line 25
    :goto_0
    return-object p1
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
    .line 65
.end method

.method public getLyricShot(J)Lcom/miui/maml/elements/MusicLyricParser$LyricShot;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->mHeader:Lcom/miui/maml/elements/MusicLyricParser$LyricHeader;

    .line 2
    .line 3
    iget v0, v0, Lcom/miui/maml/elements/MusicLyricParser$LyricHeader;->offset:I

    .line 4
    .line 5
    iget-object v1, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;

    .line 13
    .line 14
    iget v1, v1, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;->time:I

    .line 15
    .line 16
    add-int/2addr v1, v0

    .line 17
    int-to-long v3, v1

    .line 18
    cmp-long v1, v3, p1

    .line 19
    .line 20
    const-wide/16 v3, 0x0

    .line 21
    .line 22
    if-lez v1, :cond_0

    .line 23
    .line 24
    new-instance p1, Lcom/miui/maml/elements/MusicLyricParser$LyricShot;

    .line 25
    .line 26
    invoke-direct {p1, v2, v3, v4}, Lcom/miui/maml/elements/MusicLyricParser$LyricShot;-><init>(ID)V

    .line 27
    .line 28
    .line 29
    return-object p1

    .line 30
    :cond_0
    const/4 v1, 0x1

    .line 31
    move v2, v1

    .line 32
    :goto_0
    iget-object v5, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 35
    .line 36
    .line 37
    move-result v5

    .line 38
    if-ge v2, v5, :cond_3

    .line 39
    .line 40
    iget-object v5, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    check-cast v5, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;

    .line 47
    .line 48
    iget v5, v5, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;->time:I

    .line 49
    .line 50
    add-int/2addr v5, v0

    .line 51
    int-to-long v6, v5

    .line 52
    cmp-long v6, v6, p1

    .line 53
    .line 54
    if-lez v6, :cond_2

    .line 55
    .line 56
    iget-object v6, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    .line 57
    .line 58
    sub-int/2addr v2, v1

    .line 59
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    check-cast v1, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;

    .line 64
    .line 65
    iget v1, v1, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;->time:I

    .line 66
    .line 67
    add-int/2addr v1, v0

    .line 68
    if-le v5, v1, :cond_1

    .line 69
    .line 70
    int-to-long v3, v1

    .line 71
    sub-long/2addr p1, v3

    .line 72
    long-to-double p1, p1

    .line 73
    sub-int/2addr v5, v1

    .line 74
    int-to-double v0, v5

    .line 75
    div-double v3, p1, v0

    .line 76
    .line 77
    :cond_1
    new-instance p1, Lcom/miui/maml/elements/MusicLyricParser$LyricShot;

    .line 78
    .line 79
    invoke-direct {p1, v2, v3, v4}, Lcom/miui/maml/elements/MusicLyricParser$LyricShot;-><init>(ID)V

    .line 80
    .line 81
    .line 82
    return-object p1

    .line 83
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_3
    iget-object v2, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    .line 87
    .line 88
    invoke-virtual {p0}, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->size()I

    .line 89
    .line 90
    .line 91
    move-result v5

    .line 92
    sub-int/2addr v5, v1

    .line 93
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    check-cast v2, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;

    .line 98
    .line 99
    iget v2, v2, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;->time:I

    .line 100
    .line 101
    add-int/2addr v2, v0

    .line 102
    int-to-long v5, v2

    .line 103
    sub-long/2addr p1, v5

    .line 104
    const-wide/16 v5, 0x1f40

    .line 105
    .line 106
    cmp-long v0, p1, v5

    .line 107
    .line 108
    if-gez v0, :cond_4

    .line 109
    .line 110
    long-to-double p1, p1

    .line 111
    const-wide v2, 0x40bf400000000000L    # 8000.0

    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    div-double/2addr p1, v2

    .line 117
    new-instance v0, Lcom/miui/maml/elements/MusicLyricParser$LyricShot;

    .line 118
    .line 119
    invoke-virtual {p0}, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->size()I

    .line 120
    .line 121
    .line 122
    move-result v2

    .line 123
    sub-int/2addr v2, v1

    .line 124
    invoke-direct {v0, v2, p1, p2}, Lcom/miui/maml/elements/MusicLyricParser$LyricShot;-><init>(ID)V

    .line 125
    .line 126
    .line 127
    return-object v0

    .line 128
    :cond_4
    new-instance p1, Lcom/miui/maml/elements/MusicLyricParser$LyricShot;

    .line 129
    .line 130
    iget-object p2, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    .line 131
    .line 132
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 133
    .line 134
    .line 135
    move-result p2

    .line 136
    invoke-direct {p1, p2, v3, v4}, Lcom/miui/maml/elements/MusicLyricParser$LyricShot;-><init>(ID)V

    .line 137
    .line 138
    .line 139
    return-object p1
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
.end method

.method public getNextLine(J)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->mLyricLocator:Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->getNextLine(J)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
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
.end method

.method public getOpenTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->mOpenTime:J

    .line 2
    .line 3
    return-wide v0
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
.end method

.method public getStringArr()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    return-object v0

    .line 11
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_1

    .line 33
    .line 34
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    check-cast v2, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;

    .line 39
    .line 40
    iget-object v2, v2, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;->lyric:Ljava/lang/CharSequence;

    .line 41
    .line 42
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    return-object v0
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
.end method

.method public getTimeArr()[I
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    return-object v0

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    new-array v0, v0, [I

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    iget-object v2, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-eqz v3, :cond_1

    .line 31
    .line 32
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    check-cast v3, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;

    .line 37
    .line 38
    add-int/lit8 v4, v1, 0x1

    .line 39
    .line 40
    iget v3, v3, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;->time:I

    .line 41
    .line 42
    iget-object v5, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->mHeader:Lcom/miui/maml/elements/MusicLyricParser$LyricHeader;

    .line 43
    .line 44
    iget v5, v5, Lcom/miui/maml/elements/MusicLyricParser$LyricHeader;->offset:I

    .line 45
    .line 46
    add-int/2addr v3, v5

    .line 47
    aput v3, v0, v1

    .line 48
    .line 49
    move v1, v4

    .line 50
    goto :goto_0

    .line 51
    :cond_1
    return-object v0
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
.end method

.method public isModified()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->mIsModified:Z

    .line 2
    .line 3
    return v0
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
.end method

.method public recycleContent()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4
    .line 5
    .line 6
    return-void
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
.end method

.method public resetHeaderOffset()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->mHeader:Lcom/miui/maml/elements/MusicLyricParser$LyricHeader;

    .line 2
    .line 3
    iget v1, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->mOriginHeaderOffset:I

    .line 4
    .line 5
    iput v1, v0, Lcom/miui/maml/elements/MusicLyricParser$LyricHeader;->offset:I

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
.end method

.method public set([ILjava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->mLyricLocator:Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->set([ILjava/util/ArrayList;)V

    .line 4
    .line 5
    .line 6
    return-void
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
.end method

.method public size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
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
.end method
