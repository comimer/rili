.class public interface abstract Lkotlin/reflect/jvm/internal/impl/storage/j;
.super Ljava/lang/Object;
.source "locks.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/storage/j$a;
    }
.end annotation


# static fields
.field public static final a:Lkotlin/reflect/jvm/internal/impl/storage/j$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/storage/j$a;->a:Lkotlin/reflect/jvm/internal/impl/storage/j$a;

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/storage/j;->a:Lkotlin/reflect/jvm/internal/impl/storage/j$a;

    return-void
.end method


# virtual methods
.method public abstract lock()V
.end method

.method public abstract unlock()V
.end method
