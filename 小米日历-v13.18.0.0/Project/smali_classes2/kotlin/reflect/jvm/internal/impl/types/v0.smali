.class public final Lkotlin/reflect/jvm/internal/impl/types/v0;
.super Ljava/lang/Object;
.source "TypeAttributes.kt"


# direct methods
.method public static final a(Lkotlin/reflect/jvm/internal/impl/types/u0;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;)Lkotlin/reflect/jvm/internal/impl/types/u0;
    .locals 1

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "newAnnotations"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/i;->a(Lkotlin/reflect/jvm/internal/impl/types/u0;)Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-ne v0, p1, :cond_0

    .line 16
    .line 17
    return-object p0

    .line 18
    :cond_0
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/i;->b(Lkotlin/reflect/jvm/internal/impl/types/u0;)Lkotlin/reflect/jvm/internal/impl/types/h;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    invoke-virtual {p0, v0}, Lkotlin/reflect/jvm/internal/impl/types/u0;->p(Lkotlin/reflect/jvm/internal/impl/types/s0;)Lkotlin/reflect/jvm/internal/impl/types/u0;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    move-object p0, v0

    .line 32
    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-nez v0, :cond_3

    .line 41
    .line 42
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;->isEmpty()Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_3

    .line 47
    .line 48
    return-object p0

    .line 49
    :cond_3
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/types/h;

    .line 50
    .line 51
    invoke-direct {v0, p1}, Lkotlin/reflect/jvm/internal/impl/types/h;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, v0}, Lkotlin/reflect/jvm/internal/impl/types/u0;->o(Lkotlin/reflect/jvm/internal/impl/types/s0;)Lkotlin/reflect/jvm/internal/impl/types/u0;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    return-object p0
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
.end method

.method public static final b(Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;)Lkotlin/reflect/jvm/internal/impl/types/u0;
    .locals 7

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/types/m;->a:Lkotlin/reflect/jvm/internal/impl/types/m;

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    const/4 v4, 0x0

    .line 10
    const/4 v5, 0x6

    .line 11
    const/4 v6, 0x0

    .line 12
    move-object v2, p0

    .line 13
    invoke-static/range {v1 .. v6}, Lkotlin/reflect/jvm/internal/impl/types/t0$a;->a(Lkotlin/reflect/jvm/internal/impl/types/t0;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;Lkotlin/reflect/jvm/internal/impl/types/x0;Lkotlin/reflect/jvm/internal/impl/descriptors/k;ILjava/lang/Object;)Lkotlin/reflect/jvm/internal/impl/types/u0;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
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
