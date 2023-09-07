.class public final synthetic Lcom/android/calendar/cards/p;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lk3/d$b;


# instance fields
.field public final synthetic a:Lcom/android/calendar/cards/t;

.field public final synthetic b:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/android/calendar/cards/t;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/calendar/cards/p;->a:Lcom/android/calendar/cards/t;

    iput-object p2, p0, Lcom/android/calendar/cards/p;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a(Lcom/miui/calendar/account/mi/MiAccountSchema;)V
    .locals 2

    iget-object v0, p0, Lcom/android/calendar/cards/p;->a:Lcom/android/calendar/cards/t;

    iget-object v1, p0, Lcom/android/calendar/cards/p;->b:Landroid/content/Context;

    invoke-static {v0, v1, p1}, Lcom/android/calendar/cards/t;->e(Lcom/android/calendar/cards/t;Landroid/content/Context;Lcom/miui/calendar/account/mi/MiAccountSchema;)V

    return-void
.end method
