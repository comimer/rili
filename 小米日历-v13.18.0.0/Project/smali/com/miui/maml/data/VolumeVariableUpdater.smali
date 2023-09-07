.class public Lcom/miui/maml/data/VolumeVariableUpdater;
.super Lcom/miui/maml/data/NotifierVariableUpdater;
.source "VolumeVariableUpdater.java"


# static fields
.field public static final EXTRA_PREV_VOLUME_STREAM_VALUE:Ljava/lang/String; = "android.media.EXTRA_PREV_VOLUME_STREAM_VALUE"

.field public static final EXTRA_VOLUME_STREAM_TYPE:Ljava/lang/String; = "android.media.EXTRA_VOLUME_STREAM_TYPE"

.field public static final EXTRA_VOLUME_STREAM_VALUE:Ljava/lang/String; = "android.media.EXTRA_VOLUME_STREAM_VALUE"

.field private static final SHOW_DELAY_TIME:I = 0x3e8

.field public static final VAR_VOLUME_LEVEL:Ljava/lang/String; = "volume_level"

.field public static final VAR_VOLUME_LEVEL_OLD:Ljava/lang/String; = "volume_level_old"

.field public static final VAR_VOLUME_TYPE:Ljava/lang/String; = "volume_type"

.field public static final VOLUME_CHANGED_ACTION:Ljava/lang/String; = "android.media.VOLUME_CHANGED_ACTION"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private final mResetType:Ljava/lang/Runnable;

.field private mVolumeLevel:Lcom/miui/maml/data/IndexedVariable;

.field private mVolumeLevelOld:Lcom/miui/maml/data/IndexedVariable;

.field private mVolumeType:Lcom/miui/maml/data/IndexedVariable;


# direct methods
.method public constructor <init>(Lcom/miui/maml/data/VariableUpdaterManager;)V
    .locals 3

    .line 1
    const-string v0, "android.media.VOLUME_CHANGED_ACTION"

    .line 2
    .line 3
    invoke-direct {p0, p1, v0}, Lcom/miui/maml/data/NotifierVariableUpdater;-><init>(Lcom/miui/maml/data/VariableUpdaterManager;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance p1, Lcom/miui/maml/data/VolumeVariableUpdater$1;

    .line 7
    .line 8
    invoke-direct {p1, p0}, Lcom/miui/maml/data/VolumeVariableUpdater$1;-><init>(Lcom/miui/maml/data/VolumeVariableUpdater;)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/miui/maml/data/VolumeVariableUpdater;->mResetType:Ljava/lang/Runnable;

    .line 12
    .line 13
    new-instance p1, Landroid/os/Handler;

    .line 14
    .line 15
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lcom/miui/maml/data/VolumeVariableUpdater;->mHandler:Landroid/os/Handler;

    .line 19
    .line 20
    new-instance p1, Lcom/miui/maml/data/IndexedVariable;

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/miui/maml/data/VariableUpdater;->getContext()Lcom/miui/maml/ScreenContext;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iget-object v0, v0, Lcom/miui/maml/ScreenContext;->mVariables:Lcom/miui/maml/data/Variables;

    .line 27
    .line 28
    const-string v1, "volume_level"

    .line 29
    .line 30
    const/4 v2, 0x1

    .line 31
    invoke-direct {p1, v1, v0, v2}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 32
    .line 33
    .line 34
    iput-object p1, p0, Lcom/miui/maml/data/VolumeVariableUpdater;->mVolumeLevel:Lcom/miui/maml/data/IndexedVariable;

    .line 35
    .line 36
    new-instance p1, Lcom/miui/maml/data/IndexedVariable;

    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/miui/maml/data/VariableUpdater;->getContext()Lcom/miui/maml/ScreenContext;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iget-object v0, v0, Lcom/miui/maml/ScreenContext;->mVariables:Lcom/miui/maml/data/Variables;

    .line 43
    .line 44
    const-string v1, "volume_level_old"

    .line 45
    .line 46
    invoke-direct {p1, v1, v0, v2}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 47
    .line 48
    .line 49
    iput-object p1, p0, Lcom/miui/maml/data/VolumeVariableUpdater;->mVolumeLevelOld:Lcom/miui/maml/data/IndexedVariable;

    .line 50
    .line 51
    new-instance p1, Lcom/miui/maml/data/IndexedVariable;

    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/miui/maml/data/VariableUpdater;->getContext()Lcom/miui/maml/ScreenContext;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    iget-object v0, v0, Lcom/miui/maml/ScreenContext;->mVariables:Lcom/miui/maml/data/Variables;

    .line 58
    .line 59
    const-string v1, "volume_type"

    .line 60
    .line 61
    invoke-direct {p1, v1, v0, v2}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 62
    .line 63
    .line 64
    iput-object p1, p0, Lcom/miui/maml/data/VolumeVariableUpdater;->mVolumeType:Lcom/miui/maml/data/IndexedVariable;

    .line 65
    .line 66
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 67
    .line 68
    invoke-virtual {p1, v0, v1}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 69
    .line 70
    .line 71
    return-void
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

.method static synthetic access$000(Lcom/miui/maml/data/VolumeVariableUpdater;)Lcom/miui/maml/data/IndexedVariable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/data/VolumeVariableUpdater;->mVolumeType:Lcom/miui/maml/data/IndexedVariable;

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


# virtual methods
.method public onNotify(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Object;)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string p3, "android.media.VOLUME_CHANGED_ACTION"

    .line 6
    .line 7
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_1

    .line 12
    .line 13
    const/4 p1, -0x1

    .line 14
    const-string p3, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    .line 15
    .line 16
    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    iget-object p3, p0, Lcom/miui/maml/data/VolumeVariableUpdater;->mVolumeType:Lcom/miui/maml/data/IndexedVariable;

    .line 21
    .line 22
    int-to-double v0, p1

    .line 23
    invoke-virtual {p3, v0, v1}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 24
    .line 25
    .line 26
    const-string p1, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    .line 27
    .line 28
    const/4 p3, 0x0

    .line 29
    invoke-virtual {p2, p1, p3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    iget-object v0, p0, Lcom/miui/maml/data/VolumeVariableUpdater;->mVolumeLevel:Lcom/miui/maml/data/IndexedVariable;

    .line 34
    .line 35
    int-to-double v1, p1

    .line 36
    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 37
    .line 38
    .line 39
    const-string v0, "android.media.EXTRA_PREV_VOLUME_STREAM_VALUE"

    .line 40
    .line 41
    invoke-virtual {p2, v0, p3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 42
    .line 43
    .line 44
    move-result p2

    .line 45
    if-eq p2, p1, :cond_0

    .line 46
    .line 47
    iget-object p1, p0, Lcom/miui/maml/data/VolumeVariableUpdater;->mVolumeLevelOld:Lcom/miui/maml/data/IndexedVariable;

    .line 48
    .line 49
    int-to-double p2, p2

    .line 50
    invoke-virtual {p1, p2, p3}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 51
    .line 52
    .line 53
    :cond_0
    invoke-virtual {p0}, Lcom/miui/maml/data/VariableUpdater;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {p1}, Lcom/miui/maml/ScreenElementRoot;->requestUpdate()V

    .line 58
    .line 59
    .line 60
    iget-object p1, p0, Lcom/miui/maml/data/VolumeVariableUpdater;->mHandler:Landroid/os/Handler;

    .line 61
    .line 62
    iget-object p2, p0, Lcom/miui/maml/data/VolumeVariableUpdater;->mResetType:Ljava/lang/Runnable;

    .line 63
    .line 64
    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 65
    .line 66
    .line 67
    iget-object p1, p0, Lcom/miui/maml/data/VolumeVariableUpdater;->mHandler:Landroid/os/Handler;

    .line 68
    .line 69
    iget-object p2, p0, Lcom/miui/maml/data/VolumeVariableUpdater;->mResetType:Ljava/lang/Runnable;

    .line 70
    .line 71
    const-wide/16 v0, 0x3e8

    .line 72
    .line 73
    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 74
    .line 75
    .line 76
    :cond_1
    return-void
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
