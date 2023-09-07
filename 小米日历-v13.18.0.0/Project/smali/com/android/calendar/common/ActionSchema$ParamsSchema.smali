.class public Lcom/android/calendar/common/ActionSchema$ParamsSchema;
.super Ljava/lang/Object;
.source "ActionSchema.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/common/ActionSchema;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ParamsSchema"
.end annotation


# instance fields
.field public action:Ljava/lang/String;

.field public data:Ljava/lang/String;

.field public dotTag:Ljava/lang/String;

.field public downloadPackage:Ljava/lang/String;

.field public extra:Ljava/lang/String;

.field public packageClass:Ljava/lang/String;

.field public packageName:Ljava/lang/String;

.field public type:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    instance-of v1, p1, Lcom/android/calendar/common/ActionSchema$ParamsSchema;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    check-cast p1, Lcom/android/calendar/common/ActionSchema$ParamsSchema;

    .line 9
    .line 10
    iget-object v1, p1, Lcom/android/calendar/common/ActionSchema$ParamsSchema;->url:Ljava/lang/String;

    .line 11
    .line 12
    iget-object v2, p0, Lcom/android/calendar/common/ActionSchema$ParamsSchema;->url:Ljava/lang/String;

    .line 13
    .line 14
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    iget-object v1, p1, Lcom/android/calendar/common/ActionSchema$ParamsSchema;->action:Ljava/lang/String;

    .line 21
    .line 22
    iget-object v2, p0, Lcom/android/calendar/common/ActionSchema$ParamsSchema;->action:Ljava/lang/String;

    .line 23
    .line 24
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    iget-object v1, p1, Lcom/android/calendar/common/ActionSchema$ParamsSchema;->data:Ljava/lang/String;

    .line 31
    .line 32
    iget-object v2, p0, Lcom/android/calendar/common/ActionSchema$ParamsSchema;->data:Ljava/lang/String;

    .line 33
    .line 34
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_0

    .line 39
    .line 40
    iget-object v1, p1, Lcom/android/calendar/common/ActionSchema$ParamsSchema;->packageName:Ljava/lang/String;

    .line 41
    .line 42
    iget-object v2, p0, Lcom/android/calendar/common/ActionSchema$ParamsSchema;->packageName:Ljava/lang/String;

    .line 43
    .line 44
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-eqz v1, :cond_0

    .line 49
    .line 50
    iget-object v1, p1, Lcom/android/calendar/common/ActionSchema$ParamsSchema;->packageClass:Ljava/lang/String;

    .line 51
    .line 52
    iget-object v2, p0, Lcom/android/calendar/common/ActionSchema$ParamsSchema;->packageClass:Ljava/lang/String;

    .line 53
    .line 54
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    if-eqz v1, :cond_0

    .line 59
    .line 60
    iget-object v1, p1, Lcom/android/calendar/common/ActionSchema$ParamsSchema;->type:Ljava/lang/String;

    .line 61
    .line 62
    iget-object v2, p0, Lcom/android/calendar/common/ActionSchema$ParamsSchema;->type:Ljava/lang/String;

    .line 63
    .line 64
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    if-eqz v1, :cond_0

    .line 69
    .line 70
    iget-object v1, p1, Lcom/android/calendar/common/ActionSchema$ParamsSchema;->extra:Ljava/lang/String;

    .line 71
    .line 72
    iget-object v2, p0, Lcom/android/calendar/common/ActionSchema$ParamsSchema;->extra:Ljava/lang/String;

    .line 73
    .line 74
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    if-eqz v1, :cond_0

    .line 79
    .line 80
    iget-object p1, p1, Lcom/android/calendar/common/ActionSchema$ParamsSchema;->downloadPackage:Ljava/lang/String;

    .line 81
    .line 82
    iget-object v1, p0, Lcom/android/calendar/common/ActionSchema$ParamsSchema;->downloadPackage:Ljava/lang/String;

    .line 83
    .line 84
    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    if-eqz p1, :cond_0

    .line 89
    .line 90
    const/4 v0, 0x1

    .line 91
    :cond_0
    return v0
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
