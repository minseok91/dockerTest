package djkim.mskim.dockerTest.controller;

import io.swagger.annotations.ApiOperation;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class BoardController {

    @GetMapping("board")
    @ApiOperation(value="게시판조회",notes="전체 게시판 조회")
    public String getBoard(){
        return "test2244";
    }
}
