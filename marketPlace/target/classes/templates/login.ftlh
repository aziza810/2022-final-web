<#import "blocks/template.ftlh" as t>
<@t.template user>
    <h1 style="text-align: center">Sing in</h1>
    <hr>
    <form action="/login " method="post">
        <div class="form-group">
            <label for="email">email</label>
            <input type="email" class="form-control <#if RequestParameters.error??>is-invalid</#if>" id="email" name="username">
            <div id="email" class="invalid-feedback">
                Invalid email
            </div>
        </div>
        <div class="form-group">
            <label for="password">Password</label>
            <input type="password" class="form-control <#if RequestParameters.error??>is-invalid</#if>" id="password" name="password">
            <div id="password" class="invalid-feedback">
                Invalid password
            </div>
        </div>
        <input type="hidden" name="_csrf" value="${_csrf.token}">
        <button type="submit" style="width: 100%" class="btn btn-dark">Enter</button>
    </form>
    <hr>
    <h2>Dont have account? <a href="/registration">Register</a></h2>
</@t.template>