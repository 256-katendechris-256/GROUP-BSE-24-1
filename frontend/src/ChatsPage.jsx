import { PrettyChatWindow } from 'react-chat-engine-pretty';

const ChatsPage = ({ user }) => {
  return (
    <div style={{ height: '100vh' }}>
      <PrettyChatWindow
        projectId='1e4dc223-ee8b-4795-a656-55152f63b152'
        username={user.username}  // Access 'user' directly since it's destructured
        secret={user.secret}      // Similarly for the secret
        style={{ height: '100%' }}
      />
    </div>
  );
};

export default ChatsPage;
