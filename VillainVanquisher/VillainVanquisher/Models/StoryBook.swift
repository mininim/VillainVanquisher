//
//  StoryBook.swift
//  VillainVanquisher
//
//  Created by Eric Lee on 2023/06/13.
//

import SwiftUI

struct StoryBook{
    var coverImage: UIImage?
    var title: String
    var date: String
    var contents: String
    
    init(coverImage: UIImage? = nil, title: String, date: String, contents: String) {
        self.coverImage = coverImage
        self.title = title
        self.date = date
        self.contents = contents
    }
    
    init(storyBookEntity: StoryBookEntity){
        self.title = storyBookEntity.title ?? "no title"
        self.date = storyBookEntity.date ?? "no date"
        self.contents = storyBookEntity.contents ?? "no contents"
    }
    
}

extension StoryBook{
    static var sample: StoryBook = StoryBook(coverImage: ImageAsset.sampleImage1.uiimage, title: "귀요미 용사", date: "2023.06.12", contents: "옛날 어느 작은 마을에 한 소녀가 살고 있었어요. 그 소녀의 이름은 릴리였어요. 하지만 릴리의 마음은 언제나 괴롭히는 모기 때문에 슬펐어요. 모기는 매일 밤마다 릴리의 방으로 들어와서 소리를 내고, 피를 뽑아 먹는 것이었어요. 릴리는 모기 때문에 잠을 제대로 이루지 못하고 항상 피곤한 하루를 보내고 있었어요.\n릴리는 모기를 잡아 죽이려고 해봐도 어떻게 해도 잡을 수 없었어요. 모기는 민첩하게 날아다니고, 릴리의 손가락을 피할 만큼 빨리 날아가 버렸어요. 모기는 릴리에게 언제나 승리를 가져가고 있었어요.\n하지만 어느 날, 릴리는 기막힌 아이디어를 떠올렸어요. 그녀는 모기를 쫓아가기 시작했어요. 뛰어난 능력을 가진 사냥꾼이 되어보려고요! 그녀는 전문적인 사냥꾼들의 비밀을 찾아다녔어요. 마침내 그녀는 올바른 방법을 알게 되었어요. \n 한가한 낮에, 릴리는 마을의 슈퍼마켓으로 갔어요. 거기에서 그녀는 특별한 물건을 구입했어요. 그것은 모기를 쫓아내는 향기를 품은 스프레이였어요. 릴리는 집으로 돌아와 방 안 곳곳에 스프레이를 뿌려놓았어요. \n 밤이 되었어요. 모기가 예상대로 방에 날아왔어요. 하지만 이번에는 다르게 느껴졌어요. 모기는 이상한 향기에 취해 헤엄치기 시작했어요. 그리고 점점 약해져갔어요. 릴리는 이제 모기를 손쉽게 잡을 수 있었어요. 그녀는 어떤\n특별한 함정을 준비해놓았어요. 작은 모기들이 릴리의 방 안으로 끌려오더니, 스프레이의 향기에 너무 달라붙었어요. 그들은 점점 느리게 날아가고 약해져갔어요. 릴리는 모기들을 쉽게 잡을 수 있었답니다.\n릴리는 기뻐서 사냥꾼으로서의 재능을 발견한 것에 감사하며 살았어요. 그리고 이제는 모기들이 없는 평화로운 밤을 보낼 수 있었어요. 릴리는 잠을 푹 자고, 아침에는 활기찬 하루를 맞이할 수 있었답니다.\n마을 사람들은 릴리의 스프레이에 대해 궁금해했어요. 그래서 릴리는 스프레이를 마을 사람들과 나눠주었어요. 이제 모두가 편안한 잠을 잘 수 있고, 모기에 시달리지 않아도 되니 행복해했어요.\n릴리는 이야기의 주인공이자 영웅이었어요. 그녀는 어려운 시간을 극복하고, 자신의 잠을 지키기 위해 노력한 모범적인 사람이었답니다. 그녀의 용기와 지혜로운 선택 덕분에 마을 사람들은 평화롭게 생활할 수 있게 되었어요.\n이야기 끝에는 릴리가 자신의 경험을 공유하며 말했어요. \"모기처럼 작고 사소해 보이는 문제라도, 우리는 항상 당황하지 않고 창의적인 해결책을 찾을 수 있어요. 우리 모두가 용기와 노력으로 어려운 상황을 이겨낼 수 있어요. 그리고 언제나 평화와 행복을 찾을 수 있을 거예요.\"\n이렇게 릴리는 자신의 모험을 마치고 마을 사람들에게 희망을 전해주었답니다. 이제부터는 릴리와 마을 사람들은 모기 없는 행복한 일상을 함께 할 수 있었어요."
    )
}
