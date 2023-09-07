.class public final synthetic Lcom/android/calendar/homepage/productivity/c;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/android/calendar/homepage/productivity/ProductivityListLayout;


# direct methods
.method public synthetic constructor <init>(Lcom/android/calendar/homepage/productivity/ProductivityListLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/calendar/homepage/productivity/c;->a:Lcom/android/calendar/homepage/productivity/ProductivityListLayout;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/homepage/productivity/c;->a:Lcom/android/calendar/homepage/productivity/ProductivityListLayout;

    invoke-static {v0}, Lcom/android/calendar/homepage/productivity/ProductivityListLayout;->A(Lcom/android/calendar/homepage/productivity/ProductivityListLayout;)V

    return-void
.end method
