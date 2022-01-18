<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.14.0/css/all.css" integrity="sha384-HzLeBuhoNPvSl5KYnjx0BT+WB0QEEqLprO+NBkkk5gbc67FTaL7XIGa2w1L0Xbgc" crossorigin="anonymous">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="http://lab.alexcican.com/set_cookies/cookie.js" type="text/javascript" ></script>
<link href="${pageContext.request.contextPath}/resources/css/bbswrite.css" rel="stylesheet" type="text/css"/>
</head>
<body>
    <form class="formwidth">
        <div class="mb-3 divmargin shadow p-3 mb-5 bg-body rounded">
          <div class="flex">
            <div class="textline border border-3 fas fa-thumbs-up rounded-3"><i class=""></i> <span>추천</span></div>
            <div>
              <label for="disabledTextInput" class="form-label">[cat]</label>
              <label for="disabledTextInput" class="form-label">title</label> <br>
              <label for="disabledTextInput" class="form-label">by nickname</label>&nbsp;&nbsp;&middot;&nbsp;&nbsp;
              <label for="disabledTextInput" class="form-label">wirte date</label>
            </div>
          </div><br><br>
          <div class="content">
            <p class="pwidth">fdafdafdafdafdafdafdafdafdafdafdafdafdafdafdafdafdafdafdafdafdafdafdafdafdafdafdafdafdafdafdafdafdafdafdafdafdafdafdafdafdafdafdafdafdafdafdafdafdafdafdafdafdafdafdafdafdafdadsadsa</p>
          </div> 
        </div>

        <button type="submit" class="btn btn-primary">글수정</button>
        <button type="submit" class="btn btn-primary">글삭제</button>

        

          <div class="mb-3 divmargin">
          </div>
          <div class="form-floating divmargin">
            <textarea class="form-control shadow p-3 mb-5 bg-body rounded" placeholder="Leave a comment here" id="floatingTextarea2" style="height: 100px"></textarea>
            <label for="floatingTextarea2">Comments</label>
          </div>
          <button type="submit" class="btn btn-primary">등록</button>

          <!--댓글-->
          <form class="">

            <div class="mb-3 divmargin shadow p-3 mb-5 bg-body rounded">
                <div class="flex">
                  <div class="textline border border-3 fas fa-thumbs-up rounded-3"><i class=""></i> <span>추천</span></div>
                  <div>
                    <label for="disabledTextInput" class="form-label">[cat]</label>
                    <label for="disabledTextInput" class="form-label">title</label> <br>
                    <label for="disabledTextInput" class="form-label">by nickname</label>&nbsp;&nbsp;&middot;&nbsp;&nbsp;
                    <label for="disabledTextInput" class="form-label">wirte date</label>
                  </div>
                </div><br>
                <div class="content">
                  <p class="pwidth">fdafdafdafdafdafdafdafdafdsfdsfsdjvnjslnvjksnvjklfsbnajlbfsajbnjlfsanbjlfanbjlfdsanljkfdafda</p>
                </div>
            </div>
            
            
          </form>
          

          

          
          
        
      </form>
</body>
</html>