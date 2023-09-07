.class public final synthetic Lcom/android/calendar/cards/u;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lk3/d$b;


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Lcom/android/calendar/cards/CardHelper$b;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/android/calendar/cards/CardHelper$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/calendar/cards/u;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/calendar/cards/u;->b:Lcom/android/calendar/cards/CardHelper$b;

    return-void
.end method


# virtual methods
.method public final a(Lcom/miui/calendar/account/mi/MiAccountSchema;)V
    .locals 2

    iget-object v0, p0, Lcom/android/calendar/cards/u;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/calendar/cards/u;->b:Lcom/android/calendar/cards/CardHelper$b;

    invoke-static {v0, v1, p1}, Lcom/android/calendar/cards/CardHelper;->c(Landroid/content/Context;Lcom/android/calendar/cards/CardHelper$b;Lcom/miui/calendar/account/mi/MiAccountSchema;)V

    return-void
.end method
