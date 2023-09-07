.class public Lcom/miui/calendar/util/StatusBar;
.super Ljava/lang/Object;
.source "StatusBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/calendar/util/StatusBar$DarkMode;
    }
.end annotation


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Lcom/miui/calendar/util/StatusBar$DarkMode;

.field private c:I

.field private d:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/miui/calendar/util/StatusBar$DarkMode;->INIT:Lcom/miui/calendar/util/StatusBar$DarkMode;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/miui/calendar/util/StatusBar;->b:Lcom/miui/calendar/util/StatusBar$DarkMode;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lcom/miui/calendar/util/StatusBar;->c:I

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    iput-object v1, p0, Lcom/miui/calendar/util/StatusBar;->d:Ljava/lang/reflect/Method;

    .line 13
    .line 14
    iput-object p1, p0, Lcom/miui/calendar/util/StatusBar;->a:Landroid/app/Activity;

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    :try_start_0
    const-string v2, "android.view.MiuiWindowManager$LayoutParams"

    .line 27
    .line 28
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    const-string v3, "EXTRA_FLAG_STATUS_BAR_DARK_MODE"

    .line 33
    .line 34
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-virtual {v3, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    iput v2, p0, Lcom/miui/calendar/util/StatusBar;->c:I

    .line 43
    .line 44
    const-string v2, "setExtraFlags"

    .line 45
    .line 46
    const/4 v3, 0x2

    .line 47
    new-array v3, v3, [Ljava/lang/Class;

    .line 48
    .line 49
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 50
    .line 51
    aput-object v4, v3, v0

    .line 52
    .line 53
    const/4 v5, 0x1

    .line 54
    aput-object v4, v3, v5

    .line 55
    .line 56
    invoke-virtual {p1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    iput-object p1, p0, Lcom/miui/calendar/util/StatusBar;->d:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :catch_0
    iput v0, p0, Lcom/miui/calendar/util/StatusBar;->c:I

    .line 64
    .line 65
    iput-object v1, p0, Lcom/miui/calendar/util/StatusBar;->d:Ljava/lang/reflect/Method;

    .line 66
    .line 67
    :cond_0
    :goto_0
    return-void
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
.end method

.method private b(IZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/miui/calendar/util/StatusBar;->a:Landroid/app/Activity;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz p2, :cond_1

    .line 19
    .line 20
    or-int/2addr p1, v1

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    not-int p1, p1

    .line 23
    and-int/2addr p1, v1

    .line 24
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 25
    .line 26
    .line 27
    return-void
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


# virtual methods
.method public a(Z)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/miui/calendar/util/StatusBar;->b:Lcom/miui/calendar/util/StatusBar$DarkMode;

    .line 2
    .line 3
    sget-object v1, Lcom/miui/calendar/util/StatusBar$DarkMode;->ENABLE:Lcom/miui/calendar/util/StatusBar$DarkMode;

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    if-nez p1, :cond_1

    .line 8
    .line 9
    :cond_0
    sget-object v2, Lcom/miui/calendar/util/StatusBar$DarkMode;->DISABLE:Lcom/miui/calendar/util/StatusBar$DarkMode;

    .line 10
    .line 11
    if-ne v0, v2, :cond_2

    .line 12
    .line 13
    if-nez p1, :cond_2

    .line 14
    .line 15
    :cond_1
    return-void

    .line 16
    :cond_2
    if-eqz p1, :cond_3

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_3
    move-object v1, v2

    .line 20
    :goto_0
    iput-object v1, p0, Lcom/miui/calendar/util/StatusBar;->b:Lcom/miui/calendar/util/StatusBar$DarkMode;

    .line 21
    .line 22
    iget-object v0, p0, Lcom/miui/calendar/util/StatusBar;->d:Ljava/lang/reflect/Method;

    .line 23
    .line 24
    const/4 v1, 0x1

    .line 25
    if-eqz v0, :cond_5

    .line 26
    .line 27
    :try_start_0
    iget-object v2, p0, Lcom/miui/calendar/util/StatusBar;->a:Landroid/app/Activity;

    .line 28
    .line 29
    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    const/4 v3, 0x2

    .line 34
    new-array v3, v3, [Ljava/lang/Object;

    .line 35
    .line 36
    const/4 v4, 0x0

    .line 37
    if-eqz p1, :cond_4

    .line 38
    .line 39
    iget v5, p0, Lcom/miui/calendar/util/StatusBar;->c:I

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_4
    move v5, v4

    .line 43
    :goto_1
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    aput-object v5, v3, v4

    .line 48
    .line 49
    iget v4, p0, Lcom/miui/calendar/util/StatusBar;->c:I

    .line 50
    .line 51
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    aput-object v4, v3, v1

    .line 56
    .line 57
    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .line 59
    .line 60
    :catch_0
    :cond_5
    iget-object v0, p0, Lcom/miui/calendar/util/StatusBar;->a:Landroid/app/Activity;

    .line 61
    .line 62
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    if-nez p1, :cond_6

    .line 67
    .line 68
    const/high16 v2, -0x80000000

    .line 69
    .line 70
    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    .line 71
    .line 72
    .line 73
    :cond_6
    const/16 v0, 0x2000

    .line 74
    .line 75
    xor-int/2addr p1, v1

    .line 76
    invoke-direct {p0, v0, p1}, Lcom/miui/calendar/util/StatusBar;->b(IZ)V

    .line 77
    .line 78
    .line 79
    return-void
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
