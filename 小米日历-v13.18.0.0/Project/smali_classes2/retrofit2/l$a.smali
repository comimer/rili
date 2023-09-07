.class final Lretrofit2/l$a;
.super Ljava/lang/Object;
.source "ServiceMethod.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit2/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final a:Lretrofit2/k;

.field final b:Ljava/lang/reflect/Method;

.field final c:[Ljava/lang/annotation/Annotation;

.field final d:[[Ljava/lang/annotation/Annotation;

.field final e:[Ljava/lang/reflect/Type;

.field f:Ljava/lang/reflect/Type;

.field g:Z

.field h:Z

.field i:Z

.field j:Z

.field k:Z

.field l:Z

.field m:Ljava/lang/String;

.field n:Z

.field o:Z

.field p:Z

.field q:Ljava/lang/String;

.field r:Lokhttp3/s;

.field s:Lokhttp3/v;

.field t:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field u:[Lretrofit2/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lretrofit2/g<",
            "*>;"
        }
    .end annotation
.end field

.field v:Lretrofit2/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/c<",
            "Lokhttp3/b0;",
            "TT;>;"
        }
    .end annotation
.end field

.field w:Lretrofit2/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/b<",
            "TT;TR;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lretrofit2/k;Ljava/lang/reflect/Method;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lretrofit2/l$a;->a:Lretrofit2/k;

    .line 5
    .line 6
    iput-object p2, p0, Lretrofit2/l$a;->b:Ljava/lang/reflect/Method;

    .line 7
    .line 8
    invoke-virtual {p2}, Ljava/lang/reflect/AccessibleObject;->getAnnotations()[Ljava/lang/annotation/Annotation;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Lretrofit2/l$a;->c:[Ljava/lang/annotation/Annotation;

    .line 13
    .line 14
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iput-object p1, p0, Lretrofit2/l$a;->e:[Ljava/lang/reflect/Type;

    .line 19
    .line 20
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iput-object p1, p0, Lretrofit2/l$a;->d:[[Ljava/lang/annotation/Annotation;

    .line 25
    .line 26
    return-void
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

.method private b()Lretrofit2/b;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lretrofit2/b<",
            "TT;TR;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lretrofit2/l$a;->b:Ljava/lang/reflect/Method;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lretrofit2/m;->k(Ljava/lang/reflect/Type;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x1

    .line 12
    const/4 v3, 0x0

    .line 13
    if-nez v1, :cond_1

    .line 14
    .line 15
    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    .line 16
    .line 17
    if-eq v0, v1, :cond_0

    .line 18
    .line 19
    iget-object v1, p0, Lretrofit2/l$a;->b:Ljava/lang/reflect/Method;

    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/reflect/AccessibleObject;->getAnnotations()[Ljava/lang/annotation/Annotation;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    :try_start_0
    iget-object v4, p0, Lretrofit2/l$a;->a:Lretrofit2/k;

    .line 26
    .line 27
    invoke-virtual {v4, v0, v1}, Lretrofit2/k;->b(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/b;

    .line 28
    .line 29
    .line 30
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    return-object v0

    .line 32
    :catch_0
    move-exception v1

    .line 33
    new-array v2, v2, [Ljava/lang/Object;

    .line 34
    .line 35
    aput-object v0, v2, v3

    .line 36
    .line 37
    const-string v0, "Unable to create call adapter for %s"

    .line 38
    .line 39
    invoke-direct {p0, v1, v0, v2}, Lretrofit2/l$a;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    throw v0

    .line 44
    :cond_0
    new-array v0, v3, [Ljava/lang/Object;

    .line 45
    .line 46
    const-string v1, "Service methods cannot return void."

    .line 47
    .line 48
    invoke-direct {p0, v1, v0}, Lretrofit2/l$a;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    throw v0

    .line 53
    :cond_1
    new-array v1, v2, [Ljava/lang/Object;

    .line 54
    .line 55
    aput-object v0, v1, v3

    .line 56
    .line 57
    const-string v0, "Method return type must not include a type variable or wildcard: %s"

    .line 58
    .line 59
    invoke-direct {p0, v0, v1}, Lretrofit2/l$a;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    throw v0
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

.method private c()Lretrofit2/c;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lretrofit2/c<",
            "Lokhttp3/b0;",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lretrofit2/l$a;->b:Ljava/lang/reflect/Method;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/reflect/AccessibleObject;->getAnnotations()[Ljava/lang/annotation/Annotation;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :try_start_0
    iget-object v1, p0, Lretrofit2/l$a;->a:Lretrofit2/k;

    .line 8
    .line 9
    iget-object v2, p0, Lretrofit2/l$a;->f:Ljava/lang/reflect/Type;

    .line 10
    .line 11
    invoke-virtual {v1, v2, v0}, Lretrofit2/k;->k(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/c;

    .line 12
    .line 13
    .line 14
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    return-object v0

    .line 16
    :catch_0
    move-exception v0

    .line 17
    const/4 v1, 0x1

    .line 18
    new-array v1, v1, [Ljava/lang/Object;

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    iget-object v3, p0, Lretrofit2/l$a;->f:Ljava/lang/reflect/Type;

    .line 22
    .line 23
    aput-object v3, v1, v2

    .line 24
    .line 25
    const-string v2, "Unable to create converter for %s"

    .line 26
    .line 27
    invoke-direct {p0, v0, v2, v1}, Lretrofit2/l$a;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    throw v0
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

.method private varargs d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0, p1, p2}, Lretrofit2/l$a;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    return-object p1
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

.method private varargs e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;
    .locals 1

    .line 1
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    new-instance p3, Ljava/lang/IllegalArgumentException;

    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string p2, "\n    for method "

    .line 16
    .line 17
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget-object p2, p0, Lretrofit2/l$a;->b:Ljava/lang/reflect/Method;

    .line 21
    .line 22
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string p2, "."

    .line 34
    .line 35
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object p2, p0, Lretrofit2/l$a;->b:Ljava/lang/reflect/Method;

    .line 39
    .line 40
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    invoke-direct {p3, p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 52
    .line 53
    .line 54
    return-object p3
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

.method private varargs f(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    const-string p2, " (parameter #"

    .line 10
    .line 11
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    add-int/lit8 p1, p1, 0x1

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string p1, ")"

    .line 20
    .line 21
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-direct {p0, p1, p3}, Lretrofit2/l$a;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    return-object p1
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

.method private varargs g(Ljava/lang/Throwable;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    const-string p3, " (parameter #"

    .line 10
    .line 11
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    add-int/lit8 p2, p2, 0x1

    .line 15
    .line 16
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string p2, ")"

    .line 20
    .line 21
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    invoke-direct {p0, p1, p2, p4}, Lretrofit2/l$a;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    return-object p1
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
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
.end method

.method private h([Ljava/lang/String;)Lokhttp3/s;
    .locals 8

    .line 1
    new-instance v0, Lokhttp3/s$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lokhttp3/s$a;-><init>()V

    .line 4
    .line 5
    .line 6
    array-length v1, p1

    .line 7
    const/4 v2, 0x0

    .line 8
    move v3, v2

    .line 9
    :goto_0
    if-ge v3, v1, :cond_3

    .line 10
    .line 11
    aget-object v4, p1, v3

    .line 12
    .line 13
    const/16 v5, 0x3a

    .line 14
    .line 15
    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    .line 16
    .line 17
    .line 18
    move-result v5

    .line 19
    const/4 v6, -0x1

    .line 20
    const/4 v7, 0x1

    .line 21
    if-eq v5, v6, :cond_2

    .line 22
    .line 23
    if-eqz v5, :cond_2

    .line 24
    .line 25
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 26
    .line 27
    .line 28
    move-result v6

    .line 29
    sub-int/2addr v6, v7

    .line 30
    if-eq v5, v6, :cond_2

    .line 31
    .line 32
    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v6

    .line 36
    add-int/lit8 v5, v5, 0x1

    .line 37
    .line 38
    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    const-string v5, "Content-Type"

    .line 47
    .line 48
    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 49
    .line 50
    .line 51
    move-result v5

    .line 52
    if-eqz v5, :cond_1

    .line 53
    .line 54
    invoke-static {v4}, Lokhttp3/v;->f(Ljava/lang/String;)Lokhttp3/v;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    if-eqz v5, :cond_0

    .line 59
    .line 60
    iput-object v5, p0, Lretrofit2/l$a;->s:Lokhttp3/v;

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_0
    new-array p1, v7, [Ljava/lang/Object;

    .line 64
    .line 65
    aput-object v4, p1, v2

    .line 66
    .line 67
    const-string v0, "Malformed content type: %s"

    .line 68
    .line 69
    invoke-direct {p0, v0, p1}, Lretrofit2/l$a;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    throw p1

    .line 74
    :cond_1
    invoke-virtual {v0, v6, v4}, Lokhttp3/s$a;->a(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/s$a;

    .line 75
    .line 76
    .line 77
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_2
    new-array p1, v7, [Ljava/lang/Object;

    .line 81
    .line 82
    aput-object v4, p1, v2

    .line 83
    .line 84
    const-string v0, "@Headers value must be in the form \"Name: Value\". Found: \"%s\""

    .line 85
    .line 86
    invoke-direct {p0, v0, p1}, Lretrofit2/l$a;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    throw p1

    .line 91
    :cond_3
    invoke-virtual {v0}, Lokhttp3/s$a;->d()Lokhttp3/s;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    return-object p1
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

.method private i(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lretrofit2/l$a;->m:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-nez v0, :cond_3

    .line 6
    .line 7
    iput-object p1, p0, Lretrofit2/l$a;->m:Ljava/lang/String;

    .line 8
    .line 9
    iput-boolean p3, p0, Lretrofit2/l$a;->n:Z

    .line 10
    .line 11
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    const/16 p1, 0x3f

    .line 19
    .line 20
    invoke-virtual {p2, p1}, Ljava/lang/String;->indexOf(I)I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    const/4 p3, -0x1

    .line 25
    if-eq p1, p3, :cond_2

    .line 26
    .line 27
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 28
    .line 29
    .line 30
    move-result p3

    .line 31
    sub-int/2addr p3, v2

    .line 32
    if-ge p1, p3, :cond_2

    .line 33
    .line 34
    add-int/2addr p1, v2

    .line 35
    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    sget-object p3, Lretrofit2/l;->m:Ljava/util/regex/Pattern;

    .line 40
    .line 41
    invoke-virtual {p3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 42
    .line 43
    .line 44
    move-result-object p3

    .line 45
    invoke-virtual {p3}, Ljava/util/regex/Matcher;->find()Z

    .line 46
    .line 47
    .line 48
    move-result p3

    .line 49
    if-nez p3, :cond_1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    new-array p2, v2, [Ljava/lang/Object;

    .line 53
    .line 54
    aput-object p1, p2, v1

    .line 55
    .line 56
    const-string p1, "URL query string \"%s\" must not have replace block. For dynamic query parameters use @Query."

    .line 57
    .line 58
    invoke-direct {p0, p1, p2}, Lretrofit2/l$a;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    throw p1

    .line 63
    :cond_2
    :goto_0
    iput-object p2, p0, Lretrofit2/l$a;->q:Ljava/lang/String;

    .line 64
    .line 65
    invoke-static {p2}, Lretrofit2/l;->c(Ljava/lang/String;)Ljava/util/Set;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    iput-object p1, p0, Lretrofit2/l$a;->t:Ljava/util/Set;

    .line 70
    .line 71
    return-void

    .line 72
    :cond_3
    const/4 p2, 0x2

    .line 73
    new-array p2, p2, [Ljava/lang/Object;

    .line 74
    .line 75
    aput-object v0, p2, v1

    .line 76
    .line 77
    aput-object p1, p2, v2

    .line 78
    .line 79
    const-string p1, "Only one HTTP method is allowed. Found: %s and %s."

    .line 80
    .line 81
    invoke-direct {p0, p1, p2}, Lretrofit2/l$a;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    throw p1
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

.method private j(Ljava/lang/annotation/Annotation;)V
    .locals 4

    .line 1
    instance-of v0, p1, Lvc/b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p1, Lvc/b;

    .line 7
    .line 8
    invoke-interface {p1}, Lvc/b;->value()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const-string v0, "DELETE"

    .line 13
    .line 14
    invoke-direct {p0, v0, p1, v1}, Lretrofit2/l$a;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 15
    .line 16
    .line 17
    goto/16 :goto_0

    .line 18
    .line 19
    :cond_0
    instance-of v0, p1, Lvc/f;

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    check-cast p1, Lvc/f;

    .line 24
    .line 25
    invoke-interface {p1}, Lvc/f;->value()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    const-string v0, "GET"

    .line 30
    .line 31
    invoke-direct {p0, v0, p1, v1}, Lretrofit2/l$a;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 32
    .line 33
    .line 34
    goto/16 :goto_0

    .line 35
    .line 36
    :cond_1
    instance-of v0, p1, Lvc/g;

    .line 37
    .line 38
    if-eqz v0, :cond_3

    .line 39
    .line 40
    check-cast p1, Lvc/g;

    .line 41
    .line 42
    invoke-interface {p1}, Lvc/g;->value()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    const-string v0, "HEAD"

    .line 47
    .line 48
    invoke-direct {p0, v0, p1, v1}, Lretrofit2/l$a;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 49
    .line 50
    .line 51
    const-class p1, Ljava/lang/Void;

    .line 52
    .line 53
    iget-object v0, p0, Lretrofit2/l$a;->f:Ljava/lang/reflect/Type;

    .line 54
    .line 55
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    if-eqz p1, :cond_2

    .line 60
    .line 61
    goto/16 :goto_0

    .line 62
    .line 63
    :cond_2
    new-array p1, v1, [Ljava/lang/Object;

    .line 64
    .line 65
    const-string v0, "HEAD method must use Void as response type."

    .line 66
    .line 67
    invoke-direct {p0, v0, p1}, Lretrofit2/l$a;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    throw p1

    .line 72
    :cond_3
    instance-of v0, p1, Lvc/n;

    .line 73
    .line 74
    const/4 v2, 0x1

    .line 75
    if-eqz v0, :cond_4

    .line 76
    .line 77
    check-cast p1, Lvc/n;

    .line 78
    .line 79
    invoke-interface {p1}, Lvc/n;->value()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    const-string v0, "PATCH"

    .line 84
    .line 85
    invoke-direct {p0, v0, p1, v2}, Lretrofit2/l$a;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 86
    .line 87
    .line 88
    goto/16 :goto_0

    .line 89
    .line 90
    :cond_4
    instance-of v0, p1, Lvc/o;

    .line 91
    .line 92
    if-eqz v0, :cond_5

    .line 93
    .line 94
    check-cast p1, Lvc/o;

    .line 95
    .line 96
    invoke-interface {p1}, Lvc/o;->value()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    const-string v0, "POST"

    .line 101
    .line 102
    invoke-direct {p0, v0, p1, v2}, Lretrofit2/l$a;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 103
    .line 104
    .line 105
    goto/16 :goto_0

    .line 106
    .line 107
    :cond_5
    instance-of v0, p1, Lvc/p;

    .line 108
    .line 109
    if-eqz v0, :cond_6

    .line 110
    .line 111
    check-cast p1, Lvc/p;

    .line 112
    .line 113
    invoke-interface {p1}, Lvc/p;->value()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    const-string v0, "PUT"

    .line 118
    .line 119
    invoke-direct {p0, v0, p1, v2}, Lretrofit2/l$a;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 120
    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_6
    instance-of v0, p1, Lvc/m;

    .line 124
    .line 125
    if-eqz v0, :cond_7

    .line 126
    .line 127
    check-cast p1, Lvc/m;

    .line 128
    .line 129
    invoke-interface {p1}, Lvc/m;->value()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    const-string v0, "OPTIONS"

    .line 134
    .line 135
    invoke-direct {p0, v0, p1, v1}, Lretrofit2/l$a;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 136
    .line 137
    .line 138
    goto :goto_0

    .line 139
    :cond_7
    instance-of v0, p1, Lvc/h;

    .line 140
    .line 141
    if-eqz v0, :cond_8

    .line 142
    .line 143
    check-cast p1, Lvc/h;

    .line 144
    .line 145
    invoke-interface {p1}, Lvc/h;->method()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    invoke-interface {p1}, Lvc/h;->path()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    invoke-interface {p1}, Lvc/h;->hasBody()Z

    .line 154
    .line 155
    .line 156
    move-result p1

    .line 157
    invoke-direct {p0, v0, v1, p1}, Lretrofit2/l$a;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 158
    .line 159
    .line 160
    goto :goto_0

    .line 161
    :cond_8
    instance-of v0, p1, Lvc/k;

    .line 162
    .line 163
    if-eqz v0, :cond_a

    .line 164
    .line 165
    check-cast p1, Lvc/k;

    .line 166
    .line 167
    invoke-interface {p1}, Lvc/k;->value()[Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    array-length v0, p1

    .line 172
    if-eqz v0, :cond_9

    .line 173
    .line 174
    invoke-direct {p0, p1}, Lretrofit2/l$a;->h([Ljava/lang/String;)Lokhttp3/s;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    iput-object p1, p0, Lretrofit2/l$a;->r:Lokhttp3/s;

    .line 179
    .line 180
    goto :goto_0

    .line 181
    :cond_9
    new-array p1, v1, [Ljava/lang/Object;

    .line 182
    .line 183
    const-string v0, "@Headers annotation is empty."

    .line 184
    .line 185
    invoke-direct {p0, v0, p1}, Lretrofit2/l$a;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    .line 186
    .line 187
    .line 188
    move-result-object p1

    .line 189
    throw p1

    .line 190
    :cond_a
    instance-of v0, p1, Lvc/l;

    .line 191
    .line 192
    const-string v3, "Only one encoding annotation is allowed."

    .line 193
    .line 194
    if-eqz v0, :cond_c

    .line 195
    .line 196
    iget-boolean p1, p0, Lretrofit2/l$a;->o:Z

    .line 197
    .line 198
    if-nez p1, :cond_b

    .line 199
    .line 200
    iput-boolean v2, p0, Lretrofit2/l$a;->p:Z

    .line 201
    .line 202
    goto :goto_0

    .line 203
    :cond_b
    new-array p1, v1, [Ljava/lang/Object;

    .line 204
    .line 205
    invoke-direct {p0, v3, p1}, Lretrofit2/l$a;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    .line 206
    .line 207
    .line 208
    move-result-object p1

    .line 209
    throw p1

    .line 210
    :cond_c
    instance-of p1, p1, Lvc/e;

    .line 211
    .line 212
    if-eqz p1, :cond_e

    .line 213
    .line 214
    iget-boolean p1, p0, Lretrofit2/l$a;->p:Z

    .line 215
    .line 216
    if-nez p1, :cond_d

    .line 217
    .line 218
    iput-boolean v2, p0, Lretrofit2/l$a;->o:Z

    .line 219
    .line 220
    goto :goto_0

    .line 221
    :cond_d
    new-array p1, v1, [Ljava/lang/Object;

    .line 222
    .line 223
    invoke-direct {p0, v3, p1}, Lretrofit2/l$a;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    .line 224
    .line 225
    .line 226
    move-result-object p1

    .line 227
    throw p1

    .line 228
    :cond_e
    :goto_0
    return-void
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
    .line 557
    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    .line 575
    .line 576
    .line 577
    .line 578
    .line 579
    .line 580
    .line 581
    .line 582
    .line 583
    .line 584
    .line 585
    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    .line 592
    .line 593
    .line 594
    .line 595
    .line 596
    .line 597
    .line 598
    .line 599
    .line 600
    .line 601
    .line 602
    .line 603
    .line 604
    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    .line 610
    .line 611
    .line 612
    .line 613
    .line 614
    .line 615
    .line 616
    .line 617
    .line 618
    .line 619
    .line 620
    .line 621
    .line 622
    .line 623
    .line 624
    .line 625
    .line 626
    .line 627
    .line 628
    .line 629
    .line 630
    .line 631
    .line 632
    .line 633
    .line 634
    .line 635
    .line 636
    .line 637
    .line 638
    .line 639
    .line 640
    .line 641
    .line 642
    .line 643
    .line 644
    .line 645
    .line 646
    .line 647
    .line 648
    .line 649
    .line 650
.end method

.method private k(ILjava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/g;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            ")",
            "Lretrofit2/g<",
            "*>;"
        }
    .end annotation

    .line 1
    array-length v0, p3

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x0

    .line 4
    move v3, v1

    .line 5
    :goto_0
    if-ge v3, v0, :cond_2

    .line 6
    .line 7
    aget-object v4, p3, v3

    .line 8
    .line 9
    invoke-direct {p0, p1, p2, p3, v4}, Lretrofit2/l$a;->l(ILjava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Ljava/lang/annotation/Annotation;)Lretrofit2/g;

    .line 10
    .line 11
    .line 12
    move-result-object v4

    .line 13
    if-nez v4, :cond_0

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_0
    if-nez v2, :cond_1

    .line 17
    .line 18
    move-object v2, v4

    .line 19
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    new-array p2, v1, [Ljava/lang/Object;

    .line 23
    .line 24
    const-string p3, "Multiple Retrofit annotations found, only one allowed."

    .line 25
    .line 26
    invoke-direct {p0, p1, p3, p2}, Lretrofit2/l$a;->f(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    throw p1

    .line 31
    :cond_2
    if-eqz v2, :cond_3

    .line 32
    .line 33
    return-object v2

    .line 34
    :cond_3
    new-array p2, v1, [Ljava/lang/Object;

    .line 35
    .line 36
    const-string p3, "No Retrofit annotation found."

    .line 37
    .line 38
    invoke-direct {p0, p1, p3, p2}, Lretrofit2/l$a;->f(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    throw p1
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

.method private l(ILjava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Ljava/lang/annotation/Annotation;)Lretrofit2/g;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Ljava/lang/annotation/Annotation;",
            ")",
            "Lretrofit2/g<",
            "*>;"
        }
    .end annotation

    .line 1
    const-class v0, Ljava/lang/String;

    const-class v1, Lokhttp3/w$c;

    instance-of v2, p4, Lvc/x;

    const-string v3, "@Path parameters may not be used with @Url."

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_6

    .line 2
    iget-boolean p3, p0, Lretrofit2/l$a;->l:Z

    if-nez p3, :cond_5

    .line 3
    iget-boolean p3, p0, Lretrofit2/l$a;->j:Z

    if-nez p3, :cond_4

    .line 4
    iget-boolean p3, p0, Lretrofit2/l$a;->k:Z

    if-nez p3, :cond_3

    .line 5
    iget-object p3, p0, Lretrofit2/l$a;->q:Ljava/lang/String;

    if-nez p3, :cond_2

    .line 6
    iput-boolean v4, p0, Lretrofit2/l$a;->l:Z

    .line 7
    const-class p3, Lokhttp3/t;

    if-eq p2, p3, :cond_1

    if-eq p2, v0, :cond_1

    const-class p3, Ljava/net/URI;

    if-eq p2, p3, :cond_1

    instance-of p3, p2, Ljava/lang/Class;

    if-eqz p3, :cond_0

    const-string p3, "android.net.Uri"

    check-cast p2, Ljava/lang/Class;

    .line 8
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-array p2, v5, [Ljava/lang/Object;

    const-string p3, "@Url must be okhttp3.HttpUrl, String, java.net.URI, or android.net.Uri type."

    .line 9
    invoke-direct {p0, p1, p3, p2}, Lretrofit2/l$a;->f(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 10
    :cond_1
    :goto_0
    new-instance p1, Lretrofit2/g$o;

    invoke-direct {p1}, Lretrofit2/g$o;-><init>()V

    return-object p1

    :cond_2
    new-array p2, v4, [Ljava/lang/Object;

    .line 11
    iget-object p3, p0, Lretrofit2/l$a;->m:Ljava/lang/String;

    aput-object p3, p2, v5

    const-string p3, "@Url cannot be used with @%s URL"

    invoke-direct {p0, p1, p3, p2}, Lretrofit2/l$a;->f(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_3
    new-array p2, v5, [Ljava/lang/Object;

    const-string p3, "A @Url parameter must not come after a @Query"

    .line 12
    invoke-direct {p0, p1, p3, p2}, Lretrofit2/l$a;->f(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_4
    new-array p2, v5, [Ljava/lang/Object;

    .line 13
    invoke-direct {p0, p1, v3, p2}, Lretrofit2/l$a;->f(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_5
    new-array p2, v5, [Ljava/lang/Object;

    const-string p3, "Multiple @Url method annotations found."

    .line 14
    invoke-direct {p0, p1, p3, p2}, Lretrofit2/l$a;->f(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 15
    :cond_6
    instance-of v2, p4, Lvc/s;

    if-eqz v2, :cond_a

    .line 16
    iget-boolean v0, p0, Lretrofit2/l$a;->k:Z

    if-nez v0, :cond_9

    .line 17
    iget-boolean v0, p0, Lretrofit2/l$a;->l:Z

    if-nez v0, :cond_8

    .line 18
    iget-object v0, p0, Lretrofit2/l$a;->q:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 19
    iput-boolean v4, p0, Lretrofit2/l$a;->j:Z

    .line 20
    check-cast p4, Lvc/s;

    .line 21
    invoke-interface {p4}, Lvc/s;->value()Ljava/lang/String;

    move-result-object v0

    .line 22
    invoke-direct {p0, p1, v0}, Lretrofit2/l$a;->m(ILjava/lang/String;)V

    .line 23
    iget-object p1, p0, Lretrofit2/l$a;->a:Lretrofit2/k;

    invoke-virtual {p1, p2, p3}, Lretrofit2/k;->l(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/c;

    move-result-object p1

    .line 24
    new-instance p2, Lretrofit2/g$j;

    invoke-interface {p4}, Lvc/s;->encoded()Z

    move-result p3

    invoke-direct {p2, v0, p1, p3}, Lretrofit2/g$j;-><init>(Ljava/lang/String;Lretrofit2/c;Z)V

    return-object p2

    :cond_7
    new-array p2, v4, [Ljava/lang/Object;

    .line 25
    iget-object p3, p0, Lretrofit2/l$a;->m:Ljava/lang/String;

    aput-object p3, p2, v5

    const-string p3, "@Path can only be used with relative url on @%s"

    invoke-direct {p0, p1, p3, p2}, Lretrofit2/l$a;->f(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_8
    new-array p2, v5, [Ljava/lang/Object;

    .line 26
    invoke-direct {p0, p1, v3, p2}, Lretrofit2/l$a;->f(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_9
    new-array p2, v5, [Ljava/lang/Object;

    const-string p3, "A @Path parameter must not come after a @Query."

    .line 27
    invoke-direct {p0, p1, p3, p2}, Lretrofit2/l$a;->f(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 28
    :cond_a
    instance-of v2, p4, Lvc/t;

    const-string v3, "<String>)"

    const-string v6, " must include generic type (e.g., "

    if-eqz v2, :cond_e

    .line 29
    check-cast p4, Lvc/t;

    .line 30
    invoke-interface {p4}, Lvc/t;->value()Ljava/lang/String;

    move-result-object v0

    .line 31
    invoke-interface {p4}, Lvc/t;->encoded()Z

    move-result p4

    .line 32
    invoke-static {p2}, Lretrofit2/m;->i(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    .line 33
    iput-boolean v4, p0, Lretrofit2/l$a;->k:Z

    .line 34
    const-class v2, Ljava/lang/Iterable;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 35
    instance-of v2, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v2, :cond_b

    .line 36
    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    .line 37
    invoke-static {v5, p2}, Lretrofit2/m;->h(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p1

    .line 38
    iget-object p2, p0, Lretrofit2/l$a;->a:Lretrofit2/k;

    .line 39
    invoke-virtual {p2, p1, p3}, Lretrofit2/k;->l(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/c;

    move-result-object p1

    .line 40
    new-instance p2, Lretrofit2/g$k;

    invoke-direct {p2, v0, p1, p4}, Lretrofit2/g$k;-><init>(Ljava/lang/String;Lretrofit2/c;Z)V

    invoke-virtual {p2}, Lretrofit2/g;->c()Lretrofit2/g;

    move-result-object p1

    return-object p1

    .line 41
    :cond_b
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array p3, v5, [Ljava/lang/Object;

    .line 43
    invoke-direct {p0, p1, p2, p3}, Lretrofit2/l$a;->f(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 44
    :cond_c
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 45
    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lretrofit2/l;->b(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    .line 46
    iget-object p2, p0, Lretrofit2/l$a;->a:Lretrofit2/k;

    .line 47
    invoke-virtual {p2, p1, p3}, Lretrofit2/k;->l(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/c;

    move-result-object p1

    .line 48
    new-instance p2, Lretrofit2/g$k;

    invoke-direct {p2, v0, p1, p4}, Lretrofit2/g$k;-><init>(Ljava/lang/String;Lretrofit2/c;Z)V

    invoke-virtual {p2}, Lretrofit2/g;->b()Lretrofit2/g;

    move-result-object p1

    return-object p1

    .line 49
    :cond_d
    iget-object p1, p0, Lretrofit2/l$a;->a:Lretrofit2/k;

    .line 50
    invoke-virtual {p1, p2, p3}, Lretrofit2/k;->l(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/c;

    move-result-object p1

    .line 51
    new-instance p2, Lretrofit2/g$k;

    invoke-direct {p2, v0, p1, p4}, Lretrofit2/g$k;-><init>(Ljava/lang/String;Lretrofit2/c;Z)V

    return-object p2

    .line 52
    :cond_e
    instance-of v2, p4, Lvc/v;

    if-eqz v2, :cond_12

    .line 53
    check-cast p4, Lvc/v;

    .line 54
    invoke-interface {p4}, Lvc/v;->encoded()Z

    move-result p4

    .line 55
    invoke-static {p2}, Lretrofit2/m;->i(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    .line 56
    iput-boolean v4, p0, Lretrofit2/l$a;->k:Z

    .line 57
    const-class v1, Ljava/lang/Iterable;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 58
    instance-of v1, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_f

    .line 59
    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    .line 60
    invoke-static {v5, p2}, Lretrofit2/m;->h(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p1

    .line 61
    iget-object p2, p0, Lretrofit2/l$a;->a:Lretrofit2/k;

    .line 62
    invoke-virtual {p2, p1, p3}, Lretrofit2/k;->l(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/c;

    move-result-object p1

    .line 63
    new-instance p2, Lretrofit2/g$m;

    invoke-direct {p2, p1, p4}, Lretrofit2/g$m;-><init>(Lretrofit2/c;Z)V

    invoke-virtual {p2}, Lretrofit2/g;->c()Lretrofit2/g;

    move-result-object p1

    return-object p1

    .line 64
    :cond_f
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array p3, v5, [Ljava/lang/Object;

    .line 66
    invoke-direct {p0, p1, p2, p3}, Lretrofit2/l$a;->f(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 67
    :cond_10
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result p1

    if-eqz p1, :cond_11

    .line 68
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lretrofit2/l;->b(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    .line 69
    iget-object p2, p0, Lretrofit2/l$a;->a:Lretrofit2/k;

    .line 70
    invoke-virtual {p2, p1, p3}, Lretrofit2/k;->l(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/c;

    move-result-object p1

    .line 71
    new-instance p2, Lretrofit2/g$m;

    invoke-direct {p2, p1, p4}, Lretrofit2/g$m;-><init>(Lretrofit2/c;Z)V

    invoke-virtual {p2}, Lretrofit2/g;->b()Lretrofit2/g;

    move-result-object p1

    return-object p1

    .line 72
    :cond_11
    iget-object p1, p0, Lretrofit2/l$a;->a:Lretrofit2/k;

    .line 73
    invoke-virtual {p1, p2, p3}, Lretrofit2/k;->l(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/c;

    move-result-object p1

    .line 74
    new-instance p2, Lretrofit2/g$m;

    invoke-direct {p2, p1, p4}, Lretrofit2/g$m;-><init>(Lretrofit2/c;Z)V

    return-object p2

    .line 75
    :cond_12
    instance-of v2, p4, Lvc/u;

    const-string v7, "Map must include generic types (e.g., Map<String, String>)"

    if-eqz v2, :cond_16

    .line 76
    invoke-static {p2}, Lretrofit2/m;->i(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    .line 77
    const-class v2, Ljava/util/Map;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 78
    const-class v2, Ljava/util/Map;

    invoke-static {p2, v1, v2}, Lretrofit2/m;->j(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object p2

    .line 79
    instance-of v1, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_14

    .line 80
    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    .line 81
    invoke-static {v5, p2}, Lretrofit2/m;->h(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v1

    if-ne v0, v1, :cond_13

    .line 82
    invoke-static {v4, p2}, Lretrofit2/m;->h(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p1

    .line 83
    iget-object p2, p0, Lretrofit2/l$a;->a:Lretrofit2/k;

    .line 84
    invoke-virtual {p2, p1, p3}, Lretrofit2/k;->l(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/c;

    move-result-object p1

    .line 85
    new-instance p2, Lretrofit2/g$l;

    check-cast p4, Lvc/u;

    invoke-interface {p4}, Lvc/u;->encoded()Z

    move-result p3

    invoke-direct {p2, p1, p3}, Lretrofit2/g$l;-><init>(Lretrofit2/c;Z)V

    return-object p2

    .line 86
    :cond_13
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "@QueryMap keys must be of type String: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array p3, v5, [Ljava/lang/Object;

    invoke-direct {p0, p1, p2, p3}, Lretrofit2/l$a;->f(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_14
    new-array p2, v5, [Ljava/lang/Object;

    .line 87
    invoke-direct {p0, p1, v7, p2}, Lretrofit2/l$a;->f(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_15
    new-array p2, v5, [Ljava/lang/Object;

    const-string p3, "@QueryMap parameter type must be Map."

    .line 88
    invoke-direct {p0, p1, p3, p2}, Lretrofit2/l$a;->f(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 89
    :cond_16
    instance-of v2, p4, Lvc/i;

    if-eqz v2, :cond_1a

    .line 90
    check-cast p4, Lvc/i;

    .line 91
    invoke-interface {p4}, Lvc/i;->value()Ljava/lang/String;

    move-result-object p4

    .line 92
    invoke-static {p2}, Lretrofit2/m;->i(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    .line 93
    const-class v1, Ljava/lang/Iterable;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 94
    instance-of v1, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_17

    .line 95
    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    .line 96
    invoke-static {v5, p2}, Lretrofit2/m;->h(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p1

    .line 97
    iget-object p2, p0, Lretrofit2/l$a;->a:Lretrofit2/k;

    .line 98
    invoke-virtual {p2, p1, p3}, Lretrofit2/k;->l(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/c;

    move-result-object p1

    .line 99
    new-instance p2, Lretrofit2/g$f;

    invoke-direct {p2, p4, p1}, Lretrofit2/g$f;-><init>(Ljava/lang/String;Lretrofit2/c;)V

    invoke-virtual {p2}, Lretrofit2/g;->c()Lretrofit2/g;

    move-result-object p1

    return-object p1

    .line 100
    :cond_17
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array p3, v5, [Ljava/lang/Object;

    .line 102
    invoke-direct {p0, p1, p2, p3}, Lretrofit2/l$a;->f(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 103
    :cond_18
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result p1

    if-eqz p1, :cond_19

    .line 104
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lretrofit2/l;->b(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    .line 105
    iget-object p2, p0, Lretrofit2/l$a;->a:Lretrofit2/k;

    .line 106
    invoke-virtual {p2, p1, p3}, Lretrofit2/k;->l(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/c;

    move-result-object p1

    .line 107
    new-instance p2, Lretrofit2/g$f;

    invoke-direct {p2, p4, p1}, Lretrofit2/g$f;-><init>(Ljava/lang/String;Lretrofit2/c;)V

    invoke-virtual {p2}, Lretrofit2/g;->b()Lretrofit2/g;

    move-result-object p1

    return-object p1

    .line 108
    :cond_19
    iget-object p1, p0, Lretrofit2/l$a;->a:Lretrofit2/k;

    .line 109
    invoke-virtual {p1, p2, p3}, Lretrofit2/k;->l(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/c;

    move-result-object p1

    .line 110
    new-instance p2, Lretrofit2/g$f;

    invoke-direct {p2, p4, p1}, Lretrofit2/g$f;-><init>(Ljava/lang/String;Lretrofit2/c;)V

    return-object p2

    .line 111
    :cond_1a
    instance-of v2, p4, Lvc/j;

    if-eqz v2, :cond_1e

    .line 112
    invoke-static {p2}, Lretrofit2/m;->i(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p4

    .line 113
    const-class v1, Ljava/util/Map;

    invoke-virtual {v1, p4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 114
    const-class v1, Ljava/util/Map;

    invoke-static {p2, p4, v1}, Lretrofit2/m;->j(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object p2

    .line 115
    instance-of p4, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz p4, :cond_1c

    .line 116
    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    .line 117
    invoke-static {v5, p2}, Lretrofit2/m;->h(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p4

    if-ne v0, p4, :cond_1b

    .line 118
    invoke-static {v4, p2}, Lretrofit2/m;->h(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p1

    .line 119
    iget-object p2, p0, Lretrofit2/l$a;->a:Lretrofit2/k;

    .line 120
    invoke-virtual {p2, p1, p3}, Lretrofit2/k;->l(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/c;

    move-result-object p1

    .line 121
    new-instance p2, Lretrofit2/g$g;

    invoke-direct {p2, p1}, Lretrofit2/g$g;-><init>(Lretrofit2/c;)V

    return-object p2

    .line 122
    :cond_1b
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "@HeaderMap keys must be of type String: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array p3, v5, [Ljava/lang/Object;

    invoke-direct {p0, p1, p2, p3}, Lretrofit2/l$a;->f(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_1c
    new-array p2, v5, [Ljava/lang/Object;

    .line 123
    invoke-direct {p0, p1, v7, p2}, Lretrofit2/l$a;->f(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_1d
    new-array p2, v5, [Ljava/lang/Object;

    const-string p3, "@HeaderMap parameter type must be Map."

    .line 124
    invoke-direct {p0, p1, p3, p2}, Lretrofit2/l$a;->f(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 125
    :cond_1e
    instance-of v2, p4, Lvc/c;

    if-eqz v2, :cond_23

    .line 126
    iget-boolean v0, p0, Lretrofit2/l$a;->o:Z

    if-eqz v0, :cond_22

    .line 127
    check-cast p4, Lvc/c;

    .line 128
    invoke-interface {p4}, Lvc/c;->value()Ljava/lang/String;

    move-result-object v0

    .line 129
    invoke-interface {p4}, Lvc/c;->encoded()Z

    move-result p4

    .line 130
    iput-boolean v4, p0, Lretrofit2/l$a;->g:Z

    .line 131
    invoke-static {p2}, Lretrofit2/m;->i(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    .line 132
    const-class v2, Ljava/lang/Iterable;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 133
    instance-of v2, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v2, :cond_1f

    .line 134
    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    .line 135
    invoke-static {v5, p2}, Lretrofit2/m;->h(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p1

    .line 136
    iget-object p2, p0, Lretrofit2/l$a;->a:Lretrofit2/k;

    .line 137
    invoke-virtual {p2, p1, p3}, Lretrofit2/k;->l(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/c;

    move-result-object p1

    .line 138
    new-instance p2, Lretrofit2/g$d;

    invoke-direct {p2, v0, p1, p4}, Lretrofit2/g$d;-><init>(Ljava/lang/String;Lretrofit2/c;Z)V

    invoke-virtual {p2}, Lretrofit2/g;->c()Lretrofit2/g;

    move-result-object p1

    return-object p1

    .line 139
    :cond_1f
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array p3, v5, [Ljava/lang/Object;

    .line 141
    invoke-direct {p0, p1, p2, p3}, Lretrofit2/l$a;->f(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 142
    :cond_20
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result p1

    if-eqz p1, :cond_21

    .line 143
    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lretrofit2/l;->b(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    .line 144
    iget-object p2, p0, Lretrofit2/l$a;->a:Lretrofit2/k;

    .line 145
    invoke-virtual {p2, p1, p3}, Lretrofit2/k;->l(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/c;

    move-result-object p1

    .line 146
    new-instance p2, Lretrofit2/g$d;

    invoke-direct {p2, v0, p1, p4}, Lretrofit2/g$d;-><init>(Ljava/lang/String;Lretrofit2/c;Z)V

    invoke-virtual {p2}, Lretrofit2/g;->b()Lretrofit2/g;

    move-result-object p1

    return-object p1

    .line 147
    :cond_21
    iget-object p1, p0, Lretrofit2/l$a;->a:Lretrofit2/k;

    .line 148
    invoke-virtual {p1, p2, p3}, Lretrofit2/k;->l(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/c;

    move-result-object p1

    .line 149
    new-instance p2, Lretrofit2/g$d;

    invoke-direct {p2, v0, p1, p4}, Lretrofit2/g$d;-><init>(Ljava/lang/String;Lretrofit2/c;Z)V

    return-object p2

    :cond_22
    new-array p2, v5, [Ljava/lang/Object;

    const-string p3, "@Field parameters can only be used with form encoding."

    .line 150
    invoke-direct {p0, p1, p3, p2}, Lretrofit2/l$a;->f(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 151
    :cond_23
    instance-of v2, p4, Lvc/d;

    if-eqz v2, :cond_28

    .line 152
    iget-boolean v1, p0, Lretrofit2/l$a;->o:Z

    if-eqz v1, :cond_27

    .line 153
    invoke-static {p2}, Lretrofit2/m;->i(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    .line 154
    const-class v2, Ljava/util/Map;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 155
    const-class v2, Ljava/util/Map;

    invoke-static {p2, v1, v2}, Lretrofit2/m;->j(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object p2

    .line 156
    instance-of v1, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_25

    .line 157
    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    .line 158
    invoke-static {v5, p2}, Lretrofit2/m;->h(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v1

    if-ne v0, v1, :cond_24

    .line 159
    invoke-static {v4, p2}, Lretrofit2/m;->h(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p1

    .line 160
    iget-object p2, p0, Lretrofit2/l$a;->a:Lretrofit2/k;

    .line 161
    invoke-virtual {p2, p1, p3}, Lretrofit2/k;->l(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/c;

    move-result-object p1

    .line 162
    iput-boolean v4, p0, Lretrofit2/l$a;->g:Z

    .line 163
    new-instance p2, Lretrofit2/g$e;

    check-cast p4, Lvc/d;

    invoke-interface {p4}, Lvc/d;->encoded()Z

    move-result p3

    invoke-direct {p2, p1, p3}, Lretrofit2/g$e;-><init>(Lretrofit2/c;Z)V

    return-object p2

    .line 164
    :cond_24
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "@FieldMap keys must be of type String: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array p3, v5, [Ljava/lang/Object;

    invoke-direct {p0, p1, p2, p3}, Lretrofit2/l$a;->f(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_25
    new-array p2, v5, [Ljava/lang/Object;

    .line 165
    invoke-direct {p0, p1, v7, p2}, Lretrofit2/l$a;->f(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_26
    new-array p2, v5, [Ljava/lang/Object;

    const-string p3, "@FieldMap parameter type must be Map."

    .line 166
    invoke-direct {p0, p1, p3, p2}, Lretrofit2/l$a;->f(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_27
    new-array p2, v5, [Ljava/lang/Object;

    const-string p3, "@FieldMap parameters can only be used with form encoding."

    .line 167
    invoke-direct {p0, p1, p3, p2}, Lretrofit2/l$a;->f(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 168
    :cond_28
    instance-of v2, p4, Lvc/q;

    if-eqz v2, :cond_37

    .line 169
    iget-boolean v0, p0, Lretrofit2/l$a;->p:Z

    if-eqz v0, :cond_36

    .line 170
    check-cast p4, Lvc/q;

    .line 171
    iput-boolean v4, p0, Lretrofit2/l$a;->h:Z

    .line 172
    invoke-interface {p4}, Lvc/q;->value()Ljava/lang/String;

    move-result-object v0

    .line 173
    invoke-static {p2}, Lretrofit2/m;->i(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v2

    .line 174
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2f

    .line 175
    const-class p3, Ljava/lang/Iterable;

    invoke-virtual {p3, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p3

    const-string p4, "@Part annotation must supply a name or use MultipartBody.Part parameter type."

    if-eqz p3, :cond_2b

    .line 176
    instance-of p3, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz p3, :cond_2a

    .line 177
    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    .line 178
    invoke-static {v5, p2}, Lretrofit2/m;->h(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p2

    .line 179
    invoke-static {p2}, Lretrofit2/m;->i(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_29

    .line 180
    sget-object p1, Lretrofit2/g$n;->a:Lretrofit2/g$n;

    invoke-virtual {p1}, Lretrofit2/g;->c()Lretrofit2/g;

    move-result-object p1

    return-object p1

    :cond_29
    new-array p2, v5, [Ljava/lang/Object;

    .line 181
    invoke-direct {p0, p1, p4, p2}, Lretrofit2/l$a;->f(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 182
    :cond_2a
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array p3, v5, [Ljava/lang/Object;

    .line 184
    invoke-direct {p0, p1, p2, p3}, Lretrofit2/l$a;->f(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 185
    :cond_2b
    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result p2

    if-eqz p2, :cond_2d

    .line 186
    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p2

    .line 187
    invoke-virtual {v1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_2c

    .line 188
    sget-object p1, Lretrofit2/g$n;->a:Lretrofit2/g$n;

    invoke-virtual {p1}, Lretrofit2/g;->b()Lretrofit2/g;

    move-result-object p1

    return-object p1

    :cond_2c
    new-array p2, v5, [Ljava/lang/Object;

    .line 189
    invoke-direct {p0, p1, p4, p2}, Lretrofit2/l$a;->f(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 190
    :cond_2d
    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_2e

    .line 191
    sget-object p1, Lretrofit2/g$n;->a:Lretrofit2/g$n;

    return-object p1

    :cond_2e
    new-array p2, v5, [Ljava/lang/Object;

    .line 192
    invoke-direct {p0, p1, p4, p2}, Lretrofit2/l$a;->f(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_2f
    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/String;

    const-string v8, "Content-Disposition"

    aput-object v8, v7, v5

    .line 193
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "form-data; name=\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\""

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v4

    const/4 v0, 0x2

    const-string v4, "Content-Transfer-Encoding"

    aput-object v4, v7, v0

    const/4 v0, 0x3

    .line 194
    invoke-interface {p4}, Lvc/q;->encoding()Ljava/lang/String;

    move-result-object p4

    aput-object p4, v7, v0

    .line 195
    invoke-static {v7}, Lokhttp3/s;->k([Ljava/lang/String;)Lokhttp3/s;

    move-result-object p4

    .line 196
    const-class v0, Ljava/lang/Iterable;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    const-string v4, "@Part parameters using the MultipartBody.Part must not include a part name in the annotation."

    if-eqz v0, :cond_32

    .line 197
    instance-of v0, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_31

    .line 198
    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    .line 199
    invoke-static {v5, p2}, Lretrofit2/m;->h(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p2

    .line 200
    invoke-static {p2}, Lretrofit2/m;->i(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_30

    .line 201
    iget-object p1, p0, Lretrofit2/l$a;->a:Lretrofit2/k;

    iget-object v0, p0, Lretrofit2/l$a;->c:[Ljava/lang/annotation/Annotation;

    .line 202
    invoke-virtual {p1, p2, p3, v0}, Lretrofit2/k;->j(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Lretrofit2/c;

    move-result-object p1

    .line 203
    new-instance p2, Lretrofit2/g$h;

    invoke-direct {p2, p4, p1}, Lretrofit2/g$h;-><init>(Lokhttp3/s;Lretrofit2/c;)V

    invoke-virtual {p2}, Lretrofit2/g;->c()Lretrofit2/g;

    move-result-object p1

    return-object p1

    :cond_30
    new-array p2, v5, [Ljava/lang/Object;

    .line 204
    invoke-direct {p0, p1, v4, p2}, Lretrofit2/l$a;->f(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 205
    :cond_31
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array p3, v5, [Ljava/lang/Object;

    .line 207
    invoke-direct {p0, p1, p2, p3}, Lretrofit2/l$a;->f(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 208
    :cond_32
    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 209
    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p2

    invoke-static {p2}, Lretrofit2/l;->b(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p2

    .line 210
    invoke-virtual {v1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_33

    .line 211
    iget-object p1, p0, Lretrofit2/l$a;->a:Lretrofit2/k;

    iget-object v0, p0, Lretrofit2/l$a;->c:[Ljava/lang/annotation/Annotation;

    .line 212
    invoke-virtual {p1, p2, p3, v0}, Lretrofit2/k;->j(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Lretrofit2/c;

    move-result-object p1

    .line 213
    new-instance p2, Lretrofit2/g$h;

    invoke-direct {p2, p4, p1}, Lretrofit2/g$h;-><init>(Lokhttp3/s;Lretrofit2/c;)V

    invoke-virtual {p2}, Lretrofit2/g;->b()Lretrofit2/g;

    move-result-object p1

    return-object p1

    :cond_33
    new-array p2, v5, [Ljava/lang/Object;

    .line 214
    invoke-direct {p0, p1, v4, p2}, Lretrofit2/l$a;->f(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 215
    :cond_34
    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_35

    .line 216
    iget-object p1, p0, Lretrofit2/l$a;->a:Lretrofit2/k;

    iget-object v0, p0, Lretrofit2/l$a;->c:[Ljava/lang/annotation/Annotation;

    .line 217
    invoke-virtual {p1, p2, p3, v0}, Lretrofit2/k;->j(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Lretrofit2/c;

    move-result-object p1

    .line 218
    new-instance p2, Lretrofit2/g$h;

    invoke-direct {p2, p4, p1}, Lretrofit2/g$h;-><init>(Lokhttp3/s;Lretrofit2/c;)V

    return-object p2

    :cond_35
    new-array p2, v5, [Ljava/lang/Object;

    .line 219
    invoke-direct {p0, p1, v4, p2}, Lretrofit2/l$a;->f(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_36
    new-array p2, v5, [Ljava/lang/Object;

    const-string p3, "@Part parameters can only be used with multipart encoding."

    .line 220
    invoke-direct {p0, p1, p3, p2}, Lretrofit2/l$a;->f(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 221
    :cond_37
    instance-of v2, p4, Lvc/r;

    if-eqz v2, :cond_3d

    .line 222
    iget-boolean v2, p0, Lretrofit2/l$a;->p:Z

    if-eqz v2, :cond_3c

    .line 223
    iput-boolean v4, p0, Lretrofit2/l$a;->h:Z

    .line 224
    invoke-static {p2}, Lretrofit2/m;->i(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v2

    .line 225
    const-class v3, Ljava/util/Map;

    invoke-virtual {v3, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 226
    const-class v3, Ljava/util/Map;

    invoke-static {p2, v2, v3}, Lretrofit2/m;->j(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object p2

    .line 227
    instance-of v2, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v2, :cond_3a

    .line 228
    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    .line 229
    invoke-static {v5, p2}, Lretrofit2/m;->h(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v2

    if-ne v0, v2, :cond_39

    .line 230
    invoke-static {v4, p2}, Lretrofit2/m;->h(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p2

    .line 231
    invoke-static {p2}, Lretrofit2/m;->i(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_38

    .line 232
    iget-object p1, p0, Lretrofit2/l$a;->a:Lretrofit2/k;

    iget-object v0, p0, Lretrofit2/l$a;->c:[Ljava/lang/annotation/Annotation;

    .line 233
    invoke-virtual {p1, p2, p3, v0}, Lretrofit2/k;->j(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Lretrofit2/c;

    move-result-object p1

    .line 234
    check-cast p4, Lvc/r;

    .line 235
    new-instance p2, Lretrofit2/g$i;

    invoke-interface {p4}, Lvc/r;->encoding()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p1, p3}, Lretrofit2/g$i;-><init>(Lretrofit2/c;Ljava/lang/String;)V

    return-object p2

    :cond_38
    new-array p2, v5, [Ljava/lang/Object;

    const-string p3, "@PartMap values cannot be MultipartBody.Part. Use @Part List<Part> or a different value type instead."

    .line 236
    invoke-direct {p0, p1, p3, p2}, Lretrofit2/l$a;->f(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 237
    :cond_39
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "@PartMap keys must be of type String: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array p3, v5, [Ljava/lang/Object;

    invoke-direct {p0, p1, p2, p3}, Lretrofit2/l$a;->f(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_3a
    new-array p2, v5, [Ljava/lang/Object;

    .line 238
    invoke-direct {p0, p1, v7, p2}, Lretrofit2/l$a;->f(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_3b
    new-array p2, v5, [Ljava/lang/Object;

    const-string p3, "@PartMap parameter type must be Map."

    .line 239
    invoke-direct {p0, p1, p3, p2}, Lretrofit2/l$a;->f(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_3c
    new-array p2, v5, [Ljava/lang/Object;

    const-string p3, "@PartMap parameters can only be used with multipart encoding."

    .line 240
    invoke-direct {p0, p1, p3, p2}, Lretrofit2/l$a;->f(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 241
    :cond_3d
    instance-of p4, p4, Lvc/a;

    if-eqz p4, :cond_40

    .line 242
    iget-boolean p4, p0, Lretrofit2/l$a;->o:Z

    if-nez p4, :cond_3f

    iget-boolean p4, p0, Lretrofit2/l$a;->p:Z

    if-nez p4, :cond_3f

    .line 243
    iget-boolean p4, p0, Lretrofit2/l$a;->i:Z

    if-nez p4, :cond_3e

    .line 244
    :try_start_0
    iget-object p4, p0, Lretrofit2/l$a;->a:Lretrofit2/k;

    iget-object v0, p0, Lretrofit2/l$a;->c:[Ljava/lang/annotation/Annotation;

    invoke-virtual {p4, p2, p3, v0}, Lretrofit2/k;->j(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Lretrofit2/c;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    iput-boolean v4, p0, Lretrofit2/l$a;->i:Z

    .line 246
    new-instance p2, Lretrofit2/g$c;

    invoke-direct {p2, p1}, Lretrofit2/g$c;-><init>(Lretrofit2/c;)V

    return-object p2

    :catch_0
    move-exception p3

    new-array p4, v4, [Ljava/lang/Object;

    aput-object p2, p4, v5

    const-string p2, "Unable to create @Body converter for %s"

    .line 247
    invoke-direct {p0, p3, p1, p2, p4}, Lretrofit2/l$a;->g(Ljava/lang/Throwable;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_3e
    new-array p2, v5, [Ljava/lang/Object;

    const-string p3, "Multiple @Body method annotations found."

    .line 248
    invoke-direct {p0, p1, p3, p2}, Lretrofit2/l$a;->f(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_3f
    new-array p2, v5, [Ljava/lang/Object;

    const-string p3, "@Body parameters cannot be used with form or multi-part encoding."

    .line 249
    invoke-direct {p0, p1, p3, p2}, Lretrofit2/l$a;->f(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_40
    const/4 p1, 0x0

    return-object p1
.end method

.method private m(ILjava/lang/String;)V
    .locals 4

    .line 1
    sget-object v0, Lretrofit2/l;->n:Ljava/util/regex/Pattern;

    .line 2
    .line 3
    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x1

    .line 12
    const/4 v2, 0x0

    .line 13
    const/4 v3, 0x2

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Lretrofit2/l$a;->t:Ljava/util/Set;

    .line 17
    .line 18
    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    new-array v0, v3, [Ljava/lang/Object;

    .line 26
    .line 27
    iget-object v3, p0, Lretrofit2/l$a;->q:Ljava/lang/String;

    .line 28
    .line 29
    aput-object v3, v0, v2

    .line 30
    .line 31
    aput-object p2, v0, v1

    .line 32
    .line 33
    const-string p2, "URL \"%s\" does not contain \"{%s}\"."

    .line 34
    .line 35
    invoke-direct {p0, p1, p2, v0}, Lretrofit2/l$a;->f(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    throw p1

    .line 40
    :cond_1
    new-array v0, v3, [Ljava/lang/Object;

    .line 41
    .line 42
    sget-object v3, Lretrofit2/l;->m:Ljava/util/regex/Pattern;

    .line 43
    .line 44
    invoke-virtual {v3}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    aput-object v3, v0, v2

    .line 49
    .line 50
    aput-object p2, v0, v1

    .line 51
    .line 52
    const-string p2, "@Path parameter name must match %s. Found: %s"

    .line 53
    .line 54
    invoke-direct {p0, p1, p2, v0}, Lretrofit2/l$a;->f(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    throw p1
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
.end method


# virtual methods
.method public a()Lretrofit2/l;
    .locals 6

    .line 1
    invoke-direct {p0}, Lretrofit2/l$a;->b()Lretrofit2/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lretrofit2/l$a;->w:Lretrofit2/b;

    .line 6
    .line 7
    invoke-interface {v0}, Lretrofit2/b;->b()Ljava/lang/reflect/Type;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lretrofit2/l$a;->f:Ljava/lang/reflect/Type;

    .line 12
    .line 13
    const-class v1, Lretrofit2/j;

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    if-eq v0, v1, :cond_10

    .line 17
    .line 18
    const-class v1, Lokhttp3/a0;

    .line 19
    .line 20
    if-eq v0, v1, :cond_10

    .line 21
    .line 22
    invoke-direct {p0}, Lretrofit2/l$a;->c()Lretrofit2/c;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p0, Lretrofit2/l$a;->v:Lretrofit2/c;

    .line 27
    .line 28
    iget-object v0, p0, Lretrofit2/l$a;->c:[Ljava/lang/annotation/Annotation;

    .line 29
    .line 30
    array-length v1, v0

    .line 31
    move v3, v2

    .line 32
    :goto_0
    if-ge v3, v1, :cond_0

    .line 33
    .line 34
    aget-object v4, v0, v3

    .line 35
    .line 36
    invoke-direct {p0, v4}, Lretrofit2/l$a;->j(Ljava/lang/annotation/Annotation;)V

    .line 37
    .line 38
    .line 39
    add-int/lit8 v3, v3, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    iget-object v0, p0, Lretrofit2/l$a;->m:Ljava/lang/String;

    .line 43
    .line 44
    if-eqz v0, :cond_f

    .line 45
    .line 46
    iget-boolean v0, p0, Lretrofit2/l$a;->n:Z

    .line 47
    .line 48
    if-nez v0, :cond_3

    .line 49
    .line 50
    iget-boolean v0, p0, Lretrofit2/l$a;->p:Z

    .line 51
    .line 52
    if-nez v0, :cond_2

    .line 53
    .line 54
    iget-boolean v0, p0, Lretrofit2/l$a;->o:Z

    .line 55
    .line 56
    if-nez v0, :cond_1

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_1
    new-array v0, v2, [Ljava/lang/Object;

    .line 60
    .line 61
    const-string v1, "FormUrlEncoded can only be specified on HTTP methods with request body (e.g., @POST)."

    .line 62
    .line 63
    invoke-direct {p0, v1, v0}, Lretrofit2/l$a;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    throw v0

    .line 68
    :cond_2
    new-array v0, v2, [Ljava/lang/Object;

    .line 69
    .line 70
    const-string v1, "Multipart can only be specified on HTTP methods with request body (e.g., @POST)."

    .line 71
    .line 72
    invoke-direct {p0, v1, v0}, Lretrofit2/l$a;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    throw v0

    .line 77
    :cond_3
    :goto_1
    iget-object v0, p0, Lretrofit2/l$a;->d:[[Ljava/lang/annotation/Annotation;

    .line 78
    .line 79
    array-length v0, v0

    .line 80
    new-array v1, v0, [Lretrofit2/g;

    .line 81
    .line 82
    iput-object v1, p0, Lretrofit2/l$a;->u:[Lretrofit2/g;

    .line 83
    .line 84
    move v1, v2

    .line 85
    :goto_2
    const/4 v3, 0x1

    .line 86
    if-ge v1, v0, :cond_6

    .line 87
    .line 88
    iget-object v4, p0, Lretrofit2/l$a;->e:[Ljava/lang/reflect/Type;

    .line 89
    .line 90
    aget-object v4, v4, v1

    .line 91
    .line 92
    invoke-static {v4}, Lretrofit2/m;->k(Ljava/lang/reflect/Type;)Z

    .line 93
    .line 94
    .line 95
    move-result v5

    .line 96
    if-nez v5, :cond_5

    .line 97
    .line 98
    iget-object v3, p0, Lretrofit2/l$a;->d:[[Ljava/lang/annotation/Annotation;

    .line 99
    .line 100
    aget-object v3, v3, v1

    .line 101
    .line 102
    if-eqz v3, :cond_4

    .line 103
    .line 104
    iget-object v5, p0, Lretrofit2/l$a;->u:[Lretrofit2/g;

    .line 105
    .line 106
    invoke-direct {p0, v1, v4, v3}, Lretrofit2/l$a;->k(ILjava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/g;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    aput-object v3, v5, v1

    .line 111
    .line 112
    add-int/lit8 v1, v1, 0x1

    .line 113
    .line 114
    goto :goto_2

    .line 115
    :cond_4
    new-array v0, v2, [Ljava/lang/Object;

    .line 116
    .line 117
    const-string v2, "No Retrofit annotation found."

    .line 118
    .line 119
    invoke-direct {p0, v1, v2, v0}, Lretrofit2/l$a;->f(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    throw v0

    .line 124
    :cond_5
    new-array v0, v3, [Ljava/lang/Object;

    .line 125
    .line 126
    aput-object v4, v0, v2

    .line 127
    .line 128
    const-string v2, "Parameter type must not include a type variable or wildcard: %s"

    .line 129
    .line 130
    invoke-direct {p0, v1, v2, v0}, Lretrofit2/l$a;->f(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    throw v0

    .line 135
    :cond_6
    iget-object v0, p0, Lretrofit2/l$a;->q:Ljava/lang/String;

    .line 136
    .line 137
    if-nez v0, :cond_8

    .line 138
    .line 139
    iget-boolean v0, p0, Lretrofit2/l$a;->l:Z

    .line 140
    .line 141
    if-eqz v0, :cond_7

    .line 142
    .line 143
    goto :goto_3

    .line 144
    :cond_7
    new-array v0, v3, [Ljava/lang/Object;

    .line 145
    .line 146
    iget-object v1, p0, Lretrofit2/l$a;->m:Ljava/lang/String;

    .line 147
    .line 148
    aput-object v1, v0, v2

    .line 149
    .line 150
    const-string v1, "Missing either @%s URL or @Url parameter."

    .line 151
    .line 152
    invoke-direct {p0, v1, v0}, Lretrofit2/l$a;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    throw v0

    .line 157
    :cond_8
    :goto_3
    iget-boolean v0, p0, Lretrofit2/l$a;->o:Z

    .line 158
    .line 159
    if-nez v0, :cond_a

    .line 160
    .line 161
    iget-boolean v1, p0, Lretrofit2/l$a;->p:Z

    .line 162
    .line 163
    if-nez v1, :cond_a

    .line 164
    .line 165
    iget-boolean v1, p0, Lretrofit2/l$a;->n:Z

    .line 166
    .line 167
    if-nez v1, :cond_a

    .line 168
    .line 169
    iget-boolean v1, p0, Lretrofit2/l$a;->i:Z

    .line 170
    .line 171
    if-nez v1, :cond_9

    .line 172
    .line 173
    goto :goto_4

    .line 174
    :cond_9
    new-array v0, v2, [Ljava/lang/Object;

    .line 175
    .line 176
    const-string v1, "Non-body HTTP method cannot contain @Body."

    .line 177
    .line 178
    invoke-direct {p0, v1, v0}, Lretrofit2/l$a;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    throw v0

    .line 183
    :cond_a
    :goto_4
    if-eqz v0, :cond_c

    .line 184
    .line 185
    iget-boolean v0, p0, Lretrofit2/l$a;->g:Z

    .line 186
    .line 187
    if-eqz v0, :cond_b

    .line 188
    .line 189
    goto :goto_5

    .line 190
    :cond_b
    new-array v0, v2, [Ljava/lang/Object;

    .line 191
    .line 192
    const-string v1, "Form-encoded method must contain at least one @Field."

    .line 193
    .line 194
    invoke-direct {p0, v1, v0}, Lretrofit2/l$a;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    throw v0

    .line 199
    :cond_c
    :goto_5
    iget-boolean v0, p0, Lretrofit2/l$a;->p:Z

    .line 200
    .line 201
    if-eqz v0, :cond_e

    .line 202
    .line 203
    iget-boolean v0, p0, Lretrofit2/l$a;->h:Z

    .line 204
    .line 205
    if-eqz v0, :cond_d

    .line 206
    .line 207
    goto :goto_6

    .line 208
    :cond_d
    new-array v0, v2, [Ljava/lang/Object;

    .line 209
    .line 210
    const-string v1, "Multipart method must contain at least one @Part."

    .line 211
    .line 212
    invoke-direct {p0, v1, v0}, Lretrofit2/l$a;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    .line 213
    .line 214
    .line 215
    move-result-object v0

    .line 216
    throw v0

    .line 217
    :cond_e
    :goto_6
    new-instance v0, Lretrofit2/l;

    .line 218
    .line 219
    invoke-direct {v0, p0}, Lretrofit2/l;-><init>(Lretrofit2/l$a;)V

    .line 220
    .line 221
    .line 222
    return-object v0

    .line 223
    :cond_f
    new-array v0, v2, [Ljava/lang/Object;

    .line 224
    .line 225
    const-string v1, "HTTP method annotation is required (e.g., @GET, @POST, etc.)."

    .line 226
    .line 227
    invoke-direct {p0, v1, v0}, Lretrofit2/l$a;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    throw v0

    .line 232
    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 233
    .line 234
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 235
    .line 236
    .line 237
    const-string v1, "\'"

    .line 238
    .line 239
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    iget-object v1, p0, Lretrofit2/l$a;->f:Ljava/lang/reflect/Type;

    .line 243
    .line 244
    invoke-static {v1}, Lretrofit2/m;->i(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    .line 245
    .line 246
    .line 247
    move-result-object v1

    .line 248
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v1

    .line 252
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    const-string v1, "\' is not a valid response body type. Did you mean ResponseBody?"

    .line 256
    .line 257
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v0

    .line 264
    new-array v1, v2, [Ljava/lang/Object;

    .line 265
    .line 266
    invoke-direct {p0, v0, v1}, Lretrofit2/l$a;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    .line 267
    .line 268
    .line 269
    move-result-object v0

    .line 270
    throw v0
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
    .line 557
    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    .line 575
    .line 576
    .line 577
    .line 578
    .line 579
    .line 580
    .line 581
    .line 582
    .line 583
    .line 584
    .line 585
    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    .line 592
    .line 593
    .line 594
    .line 595
    .line 596
    .line 597
    .line 598
    .line 599
    .line 600
    .line 601
    .line 602
    .line 603
    .line 604
    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    .line 610
    .line 611
    .line 612
    .line 613
    .line 614
    .line 615
    .line 616
    .line 617
    .line 618
    .line 619
    .line 620
    .line 621
    .line 622
    .line 623
    .line 624
    .line 625
    .line 626
    .line 627
    .line 628
    .line 629
    .line 630
    .line 631
    .line 632
    .line 633
    .line 634
    .line 635
    .line 636
    .line 637
    .line 638
    .line 639
    .line 640
    .line 641
    .line 642
    .line 643
    .line 644
    .line 645
    .line 646
    .line 647
    .line 648
    .line 649
    .line 650
    .line 651
    .line 652
    .line 653
    .line 654
    .line 655
    .line 656
    .line 657
    .line 658
    .line 659
    .line 660
    .line 661
    .line 662
    .line 663
    .line 664
    .line 665
    .line 666
    .line 667
    .line 668
    .line 669
    .line 670
    .line 671
    .line 672
    .line 673
    .line 674
    .line 675
    .line 676
    .line 677
    .line 678
    .line 679
    .line 680
    .line 681
    .line 682
    .line 683
    .line 684
    .line 685
    .line 686
    .line 687
    .line 688
    .line 689
    .line 690
    .line 691
    .line 692
    .line 693
    .line 694
    .line 695
    .line 696
    .line 697
    .line 698
    .line 699
    .line 700
    .line 701
    .line 702
    .line 703
    .line 704
    .line 705
    .line 706
    .line 707
    .line 708
    .line 709
    .line 710
    .line 711
    .line 712
    .line 713
    .line 714
    .line 715
    .line 716
    .line 717
    .line 718
    .line 719
    .line 720
    .line 721
    .line 722
    .line 723
    .line 724
    .line 725
    .line 726
    .line 727
    .line 728
    .line 729
    .line 730
    .line 731
    .line 732
    .line 733
    .line 734
    .line 735
    .line 736
    .line 737
    .line 738
    .line 739
    .line 740
    .line 741
    .line 742
    .line 743
    .line 744
    .line 745
    .line 746
    .line 747
    .line 748
    .line 749
    .line 750
    .line 751
    .line 752
    .line 753
    .line 754
    .line 755
    .line 756
    .line 757
    .line 758
    .line 759
    .line 760
    .line 761
    .line 762
    .line 763
    .line 764
    .line 765
    .line 766
    .line 767
    .line 768
    .line 769
    .line 770
    .line 771
    .line 772
    .line 773
    .line 774
    .line 775
    .line 776
    .line 777
    .line 778
    .line 779
    .line 780
    .line 781
    .line 782
    .line 783
    .line 784
    .line 785
    .line 786
    .line 787
    .line 788
    .line 789
    .line 790
    .line 791
    .line 792
    .line 793
    .line 794
    .line 795
    .line 796
    .line 797
    .line 798
    .line 799
    .line 800
    .line 801
    .line 802
    .line 803
    .line 804
    .line 805
    .line 806
    .line 807
    .line 808
    .line 809
    .line 810
    .line 811
    .line 812
    .line 813
    .line 814
    .line 815
    .line 816
    .line 817
    .line 818
    .line 819
    .line 820
    .line 821
    .line 822
    .line 823
    .line 824
    .line 825
    .line 826
    .line 827
    .line 828
    .line 829
    .line 830
    .line 831
    .line 832
    .line 833
    .line 834
    .line 835
    .line 836
    .line 837
    .line 838
    .line 839
    .line 840
    .line 841
    .line 842
    .line 843
    .line 844
    .line 845
    .line 846
    .line 847
    .line 848
    .line 849
    .line 850
    .line 851
    .line 852
    .line 853
    .line 854
    .line 855
    .line 856
    .line 857
    .line 858
    .line 859
    .line 860
    .line 861
    .line 862
    .line 863
    .line 864
    .line 865
    .line 866
    .line 867
    .line 868
    .line 869
    .line 870
    .line 871
    .line 872
    .line 873
    .line 874
    .line 875
    .line 876
    .line 877
    .line 878
    .line 879
    .line 880
    .line 881
    .line 882
    .line 883
    .line 884
    .line 885
    .line 886
    .line 887
    .line 888
    .line 889
    .line 890
    .line 891
    .line 892
    .line 893
    .line 894
    .line 895
    .line 896
    .line 897
    .line 898
    .line 899
    .line 900
    .line 901
    .line 902
    .line 903
    .line 904
    .line 905
    .line 906
    .line 907
    .line 908
    .line 909
    .line 910
    .line 911
    .line 912
    .line 913
    .line 914
    .line 915
    .line 916
    .line 917
    .line 918
    .line 919
    .line 920
    .line 921
    .line 922
    .line 923
    .line 924
    .line 925
    .line 926
    .line 927
    .line 928
    .line 929
    .line 930
    .line 931
    .line 932
    .line 933
    .line 934
    .line 935
    .line 936
    .line 937
    .line 938
    .line 939
    .line 940
    .line 941
    .line 942
    .line 943
    .line 944
    .line 945
    .line 946
    .line 947
    .line 948
    .line 949
    .line 950
    .line 951
    .line 952
    .line 953
    .line 954
    .line 955
    .line 956
    .line 957
    .line 958
    .line 959
    .line 960
    .line 961
    .line 962
    .line 963
    .line 964
    .line 965
    .line 966
    .line 967
    .line 968
    .line 969
    .line 970
    .line 971
    .line 972
    .line 973
    .line 974
    .line 975
    .line 976
    .line 977
    .line 978
    .line 979
    .line 980
    .line 981
    .line 982
    .line 983
    .line 984
    .line 985
    .line 986
    .line 987
    .line 988
    .line 989
    .line 990
    .line 991
    .line 992
    .line 993
    .line 994
    .line 995
    .line 996
    .line 997
    .line 998
    .line 999
    .line 1000
    .line 1001
    .line 1002
    .line 1003
    .line 1004
    .line 1005
    .line 1006
    .line 1007
    .line 1008
    .line 1009
    .line 1010
    .line 1011
    .line 1012
    .line 1013
    .line 1014
    .line 1015
    .line 1016
    .line 1017
    .line 1018
    .line 1019
    .line 1020
    .line 1021
    .line 1022
    .line 1023
    .line 1024
    .line 1025
    .line 1026
    .line 1027
    .line 1028
    .line 1029
    .line 1030
    .line 1031
    .line 1032
    .line 1033
    .line 1034
    .line 1035
    .line 1036
    .line 1037
    .line 1038
    .line 1039
    .line 1040
    .line 1041
.end method
